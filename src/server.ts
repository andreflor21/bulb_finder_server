import express from 'express';
import cors from 'cors';
import { Prisma, PrismaClient } from '@prisma/client';
const app = express();

app.use(express.json());
app.use(cors());

const prisma = new PrismaClient({});

app.get('/years', async (req, res) => {
  const years = await prisma.$queryRaw(
    Prisma.sql`select m.year as id, m.year as name from models m  
               group by m.year 
               order by m.year desc`
  );

  return res.json(years);
});

app.get('/makes', async (req, res) => {
  const { year } = req.query;
  let yearNum = 0;
  if (typeof year == 'string') yearNum = +year;

  const makes = await prisma.$queryRaw(
    Prisma.sql`select mk.id, mk.name from models m
               join makes mk on mk.id = m.make_id
               where m.year = ${yearNum}
               group by mk.id, mk.name
               order by mk.id`
  );

  return res.json(makes);
});

app.get('/models', async (req, res) => {
  const { make, year } = req.query;
  let yearNum = 0;
  let makeNum = 0;
  if (typeof year == 'string') yearNum = +year;
  if (typeof make == 'string') makeNum = +make;
  const models = await prisma.model.findMany({
    where: {
      year: yearNum,
      makeId: makeNum,
    },
    select: {
      name: true,
      id: true,
    },
  });

  return res.json(models);
});

app.get('/bulbs', async (req, res) => {
  const { model } = req.query;
  let modelNum = 0;
  if (typeof model == 'string') modelNum = +model;
  const bulbs = await prisma.$queryRaw(Prisma.sql`select b.id, 
                                             b.descr as bulb,
                                             b.url_platinum,
                                             b.url_m_series,
                                             b.img_platinum,
                                             b.img_m_series, 
                                             p.id as part_id, 
                                             p.name as part, 
                                             m.name as model, 
                                             m.year,
                                             m.id as model_id, 
                                             mk.id as make_id, 
                                             mk.name as make    
                                      from models m
                                      join makes mk on mk.id = m.make_id
                                      left join bulbs_models bm on bm.model_id = m.id 
                                      left join bulbs b on bm.bulb_id = b.id
                                      left join parts p on b.part_id = p.id
                                      where m.id = ${modelNum}`);
  return res.json(bulbs);
});

app.listen(3333, () => {
  console.log('app is running on http://0.0.0.0:3333');
  console.log('or http://localhost:3333');
});
