-- CreateTable
CREATE TABLE "makes" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "makes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "models" (
    "id" SERIAL NOT NULL,
    "make_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "year" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "models_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "parts" (
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100) NOT NULL,

    CONSTRAINT "parts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "parts_models" (
    "part_id" INTEGER NOT NULL,
    "model_id" INTEGER NOT NULL,

    CONSTRAINT "parts_models_pkey" PRIMARY KEY ("part_id","model_id")
);

-- CreateTable
CREATE TABLE "bulbs" (
    "id" SERIAL NOT NULL,
    "descr" VARCHAR(100) NOT NULL,
    "part_id" INTEGER NOT NULL,
    "img_platinum" VARCHAR(512),
    "url_platinum" VARCHAR(512),
    "img_m_series" VARCHAR(512),
    "url_m_series" VARCHAR(512),

    CONSTRAINT "bulbs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bulbs_models" (
    "bulb_id" INTEGER NOT NULL,
    "model_id" INTEGER NOT NULL,

    CONSTRAINT "bulbs_models_pkey" PRIMARY KEY ("bulb_id","model_id")
);

-- CreateIndex
CREATE UNIQUE INDEX "makes_name_key" ON "makes"("name");

-- AddForeignKey
ALTER TABLE "models" ADD CONSTRAINT "models_make_id_fkey" FOREIGN KEY ("make_id") REFERENCES "makes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "parts_models" ADD CONSTRAINT "parts_models_part_id_fkey" FOREIGN KEY ("part_id") REFERENCES "parts"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "parts_models" ADD CONSTRAINT "parts_models_model_id_fkey" FOREIGN KEY ("model_id") REFERENCES "models"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bulbs" ADD CONSTRAINT "bulbs_part_id_fkey" FOREIGN KEY ("part_id") REFERENCES "parts"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bulbs_models" ADD CONSTRAINT "bulbs_models_bulb_id_fkey" FOREIGN KEY ("bulb_id") REFERENCES "bulbs"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "bulbs_models" ADD CONSTRAINT "bulbs_models_model_id_fkey" FOREIGN KEY ("model_id") REFERENCES "models"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
