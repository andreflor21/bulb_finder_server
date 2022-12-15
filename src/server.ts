import express from 'express';
import cors from 'cors';
import { Prisma, PrismaClient } from '@prisma/client';
import { data as marcas } from './data';
import { data2 as modelos } from './data2';
import { stringify } from 'querystring';
const app = express();

app.use(express.json());
app.use(cors());

const prisma = new PrismaClient({
  log: ['query'],
});

app.get('/makes', async (req, res) => {
  const makes = await prisma.make.findMany({
    select: { id: true, name: true },
  });

  res.json(makes);
});

app.get('/makes', async (req, res) => {
  const { year } = req.body;
  const makes = await prisma.$queryRaw(
    Prisma.sql`select mk.id, mk.name from "Model" m 
               join "Make" mk on mk.id = m."makeId" 
               where m.year = ${year} 
               group by mk.id, mk.name 
               order by mk.id`
  );

  return res.json(makes);
});

app.get('/models', async (req, res) => {
  const { make, year } = req.body;
  const models = await prisma.model.findMany({
    where: {
      year,
      makeId: make,
    },
    select: {
      name: true,
      id: true,
    },
  });

  return res.json(models);
});

app.get('/bulbs', async (req, res) => {
  const { model } = req.body;
  const bulbs =
    await prisma.$queryRaw(Prisma.sql`select b.id, b.descr as bulb, p.id as part_id, p.name as part
                                                  from "Bulb" b
                                                  join "BulbsModel"  bm on bm."bulbId" = b.id 
                                                  join "Part" p on b."partId" = p.id
                                                  where bm."modelId" = ${model}`);

  return res.json(bulbs);
});

app.listen(3333, () => {
  console.log('app is running on http://127.0.0.1:3333');
});
