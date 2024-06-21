/*
  Warnings:

  - You are about to drop the column `ctaPops` on the `Blog` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `Blog` DROP COLUMN `ctaPops`,
    ADD COLUMN `ctaProps` JSON NULL;
