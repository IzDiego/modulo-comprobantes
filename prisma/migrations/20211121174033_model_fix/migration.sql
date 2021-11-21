/*
  Warnings:

  - You are about to drop the `Comprobantes` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Comprobantes";

-- CreateTable
CREATE TABLE "Pagos" (
    "id" SERIAL NOT NULL,
    "comprobanteId" INTEGER NOT NULL,
    "usa_CFDI" TEXT,
    "forma_de_pago" TEXT,
    "num_parcialidad" INTEGER NOT NULL,
    "saldo_anterior" INTEGER NOT NULL,
    "importe_pagado" INTEGER NOT NULL,
    "saldo_insoluto" INTEGER NOT NULL,

    CONSTRAINT "Pagos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Comprobante" (
    "id" SERIAL NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL,
    "fecha_qn" TEXT NOT NULL,
    "cuenta_bancaria_nombre" VARCHAR(255),
    "concepto" VARCHAR(255),
    "referecia" VARCHAR(255),
    "monto" INTEGER,

    CONSTRAINT "Comprobante_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Pagos_comprobanteId_key" ON "Pagos"("comprobanteId");

-- AddForeignKey
ALTER TABLE "Pagos" ADD CONSTRAINT "Pagos_comprobanteId_fkey" FOREIGN KEY ("comprobanteId") REFERENCES "Comprobante"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
