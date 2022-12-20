"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const client_1 = require("@prisma/client");
const app = (0, express_1.default)();
app.use(express_1.default.json());
app.use((0, cors_1.default)());
const prisma = new client_1.PrismaClient({
    log: ['query'],
});
app.get('/years', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const years = yield prisma.$queryRaw(client_1.Prisma.sql `select m.year as id, m.year as name from "Model" m  
               group by m.year 
               order by m.year desc`);
    return res.json(years);
}));
app.get('/makes', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { year } = req.query;
    let yearNum = 0;
    if (typeof year == 'string')
        yearNum = +year;
    const makes = yield prisma.$queryRaw(client_1.Prisma.sql `select mk.id, mk.name from "Model" m
               join "Make" mk on mk.id = m."makeId"
               where m.year = ${yearNum}
               group by mk.id, mk.name
               order by mk.id`);
    return res.json(makes);
}));
app.get('/models', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { make, year } = req.query;
    let yearNum = 0;
    let makeNum = 0;
    if (typeof year == 'string')
        yearNum = +year;
    if (typeof make == 'string')
        makeNum = +make;
    const models = yield prisma.model.findMany({
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
}));
app.get('/bulbs', (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { model } = req.query;
    let modelNum = 0;
    if (typeof model == 'string')
        modelNum = +model;
    const bulbs = yield prisma.$queryRaw(client_1.Prisma.sql `select b.id, 
                                             b.descr as bulb, 
                                             p.id as part_id, 
                                             p.name as part, 
                                             m.name as model, 
                                             m.year,
                                             m.id as model_id, 
                                             mk.id as make_id, 
                                             mk.name as make    
                                      from "Bulb" b
                                      join "BulbsModel"  bm on bm."bulbId" = b.id 
                                      join "Part" p on b."partId" = p.id
                                      join "Model" m on bm."modelId" = m.id
                                      join "Make" mk on mk.id = m."makeId"
                                      where bm."modelId" = ${modelNum}`);
    return res.json(bulbs);
}));
app.listen(3333, () => {
    console.log('app is running on http://0.0.0.0:3333');
});
