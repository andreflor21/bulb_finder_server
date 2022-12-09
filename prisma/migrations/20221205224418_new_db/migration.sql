/*
  Warnings:

  - You are about to drop the `bulb` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `bulbsmodel` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `make` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `model` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `part` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `partsmodel` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "bulb" DROP CONSTRAINT "bulb_partid_fkey";

-- DropForeignKey
ALTER TABLE "bulbsmodel" DROP CONSTRAINT "bulbsmodel_bulbid_fkey";

-- DropForeignKey
ALTER TABLE "bulbsmodel" DROP CONSTRAINT "bulbsmodel_modelid_fkey";

-- DropForeignKey
ALTER TABLE "model" DROP CONSTRAINT "model_makeid_fkey";

-- DropForeignKey
ALTER TABLE "partsmodel" DROP CONSTRAINT "partsmodel_modelid_fkey";

-- DropForeignKey
ALTER TABLE "partsmodel" DROP CONSTRAINT "partsmodel_partid_fkey";

-- DropTable
DROP TABLE "bulb";

-- DropTable
DROP TABLE "bulbsmodel";

-- DropTable
DROP TABLE "make";

-- DropTable
DROP TABLE "model";

-- DropTable
DROP TABLE "part";

-- DropTable
DROP TABLE "partsmodel";

-- CreateTable
CREATE TABLE "Make" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Make_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Model" (
    "id" SERIAL NOT NULL,
    "makeId" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "year" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Model_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Part" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100) NOT NULL,

    CONSTRAINT "Part_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PartsModel" (
    "partId" INTEGER NOT NULL,
    "modelId" INTEGER NOT NULL,

    CONSTRAINT "PartsModel_pkey" PRIMARY KEY ("partId","modelId")
);

-- CreateTable
CREATE TABLE "Bulb" (
    "id" SERIAL NOT NULL,
    "descr" VARCHAR(100) NOT NULL,
    "partId" INTEGER NOT NULL,

    CONSTRAINT "Bulb_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BulbsModel" (
    "bulbId" INTEGER NOT NULL,
    "modelId" INTEGER NOT NULL,

    CONSTRAINT "BulbsModel_pkey" PRIMARY KEY ("bulbId","modelId")
);

-- CreateIndex
CREATE UNIQUE INDEX "Make_name_key" ON "Make"("name");

-- AddForeignKey
ALTER TABLE "Model" ADD CONSTRAINT "Model_makeId_fkey" FOREIGN KEY ("makeId") REFERENCES "Make"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PartsModel" ADD CONSTRAINT "PartsModel_partId_fkey" FOREIGN KEY ("partId") REFERENCES "Part"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PartsModel" ADD CONSTRAINT "PartsModel_modelId_fkey" FOREIGN KEY ("modelId") REFERENCES "Model"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Bulb" ADD CONSTRAINT "Bulb_partId_fkey" FOREIGN KEY ("partId") REFERENCES "Part"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BulbsModel" ADD CONSTRAINT "BulbsModel_bulbId_fkey" FOREIGN KEY ("bulbId") REFERENCES "Bulb"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BulbsModel" ADD CONSTRAINT "BulbsModel_modelId_fkey" FOREIGN KEY ("modelId") REFERENCES "Model"("id") ON DELETE RESTRICT ON UPDATE CASCADE;