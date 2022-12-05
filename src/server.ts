import express from 'express';
import cors from 'cors';
import { PrismaClient } from '@prisma/client';
import { data as marcas } from './data';
import { data2 as modelos } from './data2';
import { stringify } from 'querystring';
const app = express();

app.use(express.json());
app.use(cors());

const prisma = new PrismaClient({
  log: ['query'],
});
interface MakeProps {
  id: string;
  name: string;
}
interface BulbProps {
  id: string;
  descr: string;
  partId: string;
}
app.post('/make', async (req, res) => {
  const body = req.body;

  const make = await prisma.make.create({
    data: {
      name: body.name,
    },
  });
  res.status(201).json(make);
});

const makes = [
  { name: 'Audi' },
  { name: 'Austin' },
  { name: 'Austin Healey' },
  { name: 'Avanti' },
  { name: 'Bajaj Motorcycle' },
  { name: 'Benelli Motorcycle' },
  { name: 'Bentley' },
  { name: 'Bertone' },
  { name: 'Big Dog Motorcycle' },
  { name: 'Bimota Motorcycle' },
  { name: 'BMW' },
  { name: 'BMW Motorcycle' },
  { name: 'Bricklin' },
  { name: 'Buell Motorcycle' },
  { name: 'Bugatti' },
  { name: 'Buick' },
  { name: 'Cadillac' },
  { name: 'Cagiva Motorcycle' },
  { name: 'Can-Am Motorcycle' },
  { name: 'Chevrolet' },
  { name: 'Chrysler' },
  { name: 'Citroen' },
  { name: 'Daewoo' },
  { name: 'Daihatsu' },
  { name: 'DeLorean' },
  { name: 'Dodge' },
  { name: 'Ducati Motorcycle' },
  { name: 'Eagle' },
  { name: 'Edsel' },
  { name: 'FAW' },
  { name: 'Ferrari' },
  { name: 'Fiat' },
  { name: 'Fisker' },
  { name: 'Ford' },
  { name: 'Freightliner' },
  { name: 'Gas Gas Motorcycle' },
  { name: 'Genesis' },
  { name: 'Geo' },
  { name: 'GMC' },
  { name: 'Harley Davidson Motorcycle' },
  { name: 'Honda' },
  { name: 'Honda Motorcycle' },
  { name: 'Hummer' },
  { name: 'Husqvarna Motorcycle' },
  { name: 'Hyosung Motorcycle' },
  { name: 'Hyundai' },
  { name: 'Indian Motorcycle' },
  { name: 'Infiniti' },
  { name: 'International' },
  { name: 'Isuzu' },
  { name: 'Italika Motorcycle' },
  { name: 'Jaguar' },
  { name: 'Jeep' },
  { name: 'Kawasaki Motorcycle' },
  { name: 'Kia' },
  { name: 'KTM Motorcycle' },
  { name: 'KYMCO Motorcycle' },
  { name: 'Lada' },
  { name: 'Lamborghini' },
  { name: 'Land Rover' },
  { name: 'Lexus' },
  { name: 'Lincoln' },
  { name: 'Maserati' },
  { name: 'Maybach' },
  { name: 'Mazda' },
  { name: 'Mercedes-Benz' },
  { name: 'Mercury' },
  { name: 'Merkur' },
  { name: 'MG' },
  { name: 'Mini' },
  { name: 'Mitsubishi' },
  { name: 'Mobility Ventures' },
  { name: 'Moto Guzzi Motorcycle' },
  { name: 'Nissan' },
  { name: 'Oldsmobile' },
  { name: 'Opel' },
  { name: 'Peugeot' },
  { name: 'Piaggio Motorcycle' },
  { name: 'Plymouth' },
  { name: 'Polaris' },
  { name: 'Polaris Motorcycle' },
  { name: 'Pontiac' },
  { name: 'Porsche' },
  { name: 'Ram' },
  { name: 'Renault' },
  { name: 'Rolls-Royce' },
  { name: 'Rover' },
  { name: 'Saab' },
  { name: 'Saturn' },
  { name: 'Scion' },
  { name: 'Seat' },
  { name: 'Simca' },
  { name: 'Ski-Doo' },
  { name: 'Smart' },
  { name: 'SRT' },
  { name: 'Sterling' },
  { name: 'Studebaker' },
  { name: 'Subaru' },
  { name: 'Sunbeam' },
  { name: 'Suzuki' },
  { name: 'Suzuki Motorcycle' },
  { name: 'Tesla' },
  { name: 'Think' },
  { name: 'Toyota' },
  { name: 'Triumph' },
  { name: 'Triumph Motorcycle' },
  { name: 'Vespa Motorcycle' },
  { name: 'Victory Motorcycle' },
  { name: 'Volkswagen' },
  { name: 'Volvo' },
  { name: 'VPG' },
  { name: 'Yamaha' },
  { name: 'Yamaha Motorcycle' },
  { name: 'Yugo' },
  { name: 'ZERO Motorcycle' },
];

app.post('/makes', (req, res) => {
  const mks = makes.map((make) => {
    prisma.make.create({
      data: {
        name: make.name,
      },
    });
  });
  Promise.all(mks);
  res.status(201).json(mks);
});

app.get('/makes', async (req, res) => {
  const makes = await prisma.make.findMany({
    select: { id: true, name: true },
  });

  res.json(makes);
});

app.post('/models', async (rec, res) => {
  const cars = marcas.map(async (item) => {
    let make = await prisma.make.findFirst({ where: { name: item.name } });
    const models = item.model.create.map(async (car) => {
      let newCar = { ...car, makeId: make ? make.id : '' };
      let model = await prisma.model.create({
        data: newCar,
      });
      console.log(model);
    });
  });
  await Promise.all(cars);
  res.json(cars);
});

app.post('/part', async (req, res) => {
  const body = req.body;
  const part = await prisma.part.create({ data: body });
  res.json(part);
});

app.post('/bulb', async (req, res) => {
  const body = req.body;
  const part = await prisma.part.findFirst({ where: { name: body.part } });
  let lamps = <BulbProps[]>[];
  const bulbs = body.bulbs.map(async (bulb: string) => {
    let lamp = await prisma.bulb.create({
      data: {
        descr: bulb,
        partId: part ? part.id : '',
      },
    });
    console.log(lamp);
    return lamp;
  });
  res.json(lamps);
});
app.listen(3333);
