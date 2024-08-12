/*
  Warnings:

  - You are about to alter the column `problemStatement` on the `CaseStudy` table. The data in that column could be lost. The data in that column will be cast from `Text` to `Json`.

*/

ALTER TABLE `CaseStudy`
MODIFY `problemStatement` TEXT NULL;

UPDATE `CaseStudy`
SET
    `problemStatement` = NULL;

-- AlterTable
ALTER TABLE `CaseStudy` MODIFY `problemStatement` JSON NULL;
