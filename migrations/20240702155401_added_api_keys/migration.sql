/*
  Warnings:

  - You are about to drop the `DifyTool` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SoftwareProductFeature` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `DifyTool`;

-- DropTable
DROP TABLE `SoftwareProductFeature`;

-- CreateTable
CREATE TABLE `UserAPIKeys` (
    `id` VARCHAR(191) NOT NULL,
    `key` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `UserAPIKeys_key_key`(`key`),
    INDEX `UserAPIKeys_userId_idx`(`userId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
