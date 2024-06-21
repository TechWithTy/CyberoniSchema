-- AlterTable
ALTER TABLE `Blog` ADD COLUMN `ctaPops` JSON NULL;

-- AlterTable
ALTER TABLE `BlogCategory` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `CaseStudy` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Credit` ADD COLUMN `softwareId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Discount` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Event` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Referral` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Service` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `SoftwareProduct` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `SoftwareProductCategory` ADD COLUMN `userId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `User` ADD COLUMN `creatorId` VARCHAR(191) NULL;

-- CreateIndex
CREATE INDEX `BlogCategory_userId_idx` ON `BlogCategory`(`userId`);

-- CreateIndex
CREATE INDEX `CaseStudy_userId_idx` ON `CaseStudy`(`userId`);

-- CreateIndex
CREATE INDEX `Credit_softwareId_idx` ON `Credit`(`softwareId`);

-- CreateIndex
CREATE INDEX `Discount_userId_idx` ON `Discount`(`userId`);

-- CreateIndex
CREATE INDEX `Event_userId_idx` ON `Event`(`userId`);

-- CreateIndex
CREATE INDEX `Referral_userId_idx` ON `Referral`(`userId`);

-- CreateIndex
CREATE INDEX `Service_userId_idx` ON `Service`(`userId`);

-- CreateIndex
CREATE INDEX `SoftwareProduct_userId_idx` ON `SoftwareProduct`(`userId`);

-- CreateIndex
CREATE INDEX `SoftwareProductCategory_userId_idx` ON `SoftwareProductCategory`(`userId`);

-- CreateIndex
CREATE INDEX `User_creatorId_idx` ON `User`(`creatorId`);
