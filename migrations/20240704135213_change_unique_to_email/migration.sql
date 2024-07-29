/*
  Warnings:

  - You are about to drop the column `organizationId` on the `User` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[email]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `User_email_organizationId_key` ON `User`;

-- DropIndex
DROP INDEX `User_organizationId_idx` ON `User`;

-- AlterTable
ALTER TABLE `User` DROP COLUMN `organizationId`;

-- CreateTable
CREATE TABLE `_OrganizationToUser` (
    `A` VARCHAR(191) NOT NULL,
    `B` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `_OrganizationToUser_AB_unique`(`A`, `B`),
    INDEX `_OrganizationToUser_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `User_email_key` ON `User`(`email`);
