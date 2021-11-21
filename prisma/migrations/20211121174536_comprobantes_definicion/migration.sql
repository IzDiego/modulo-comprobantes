/*
  Warnings:

  - You are about to drop the `Comprobante` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Pagos" DROP CONSTRAINT "Pagos_comprobanteId_fkey";

-- DropTable
DROP TABLE "Comprobante";

-- CreateTable
CREATE TABLE "Comprobantes" (
    "id" SERIAL NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL,
    "fecha_qn" TEXT NOT NULL,
    "cuenta_bancaria_nombre" VARCHAR(255),
    "concepto" VARCHAR(255),
    "referecia" VARCHAR(255),
    "monto" INTEGER,

    CONSTRAINT "Comprobantes_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Pagos" ADD CONSTRAINT "Pagos_comprobanteId_fkey" FOREIGN KEY ("comprobanteId") REFERENCES "Comprobantes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
