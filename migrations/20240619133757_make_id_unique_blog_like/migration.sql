/*
  Warnings:

  - The primary key for the `bloglike` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Made the column `id` on table `bloglike` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `BlogLike` DROP PRIMARY KEY,
    MODIFY `id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id`);
