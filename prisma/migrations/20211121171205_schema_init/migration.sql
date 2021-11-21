-- CreateTable
CREATE TABLE "Comprobantes" (
    "id" SERIAL NOT NULL,
    "comprobante" TEXT NOT NULL,
    "usa_CFDI" TEXT,
    "forma_de_pago" TEXT,
    "num_parcialidad" INTEGER NOT NULL,
    "saldo_anterior" INTEGER NOT NULL,
    "importe_pagado" INTEGER NOT NULL,
    "saldo_insoluto" INTEGER NOT NULL,

    CONSTRAINT "Comprobantes_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Comprobantes_comprobante_key" ON "Comprobantes"("comprobante");
