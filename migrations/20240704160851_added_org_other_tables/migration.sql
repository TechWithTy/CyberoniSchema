-- AlterTable
ALTER TABLE `Blog` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `BlogCategory` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `CaseStudy` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Discount` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Event` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Referral` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `Service` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `SoftwareProduct` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `SoftwareProductCategory` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- CreateIndex
CREATE INDEX `Blog_organizationId_idx` ON `Blog`(`organizationId`);

-- CreateIndex
CREATE INDEX `BlogCategory_organizationId_idx` ON `BlogCategory`(`organizationId`);

-- CreateIndex
CREATE INDEX `CaseStudy_organizationId_idx` ON `CaseStudy`(`organizationId`);

-- CreateIndex
CREATE INDEX `Discount_organizationId_idx` ON `Discount`(`organizationId`);

-- CreateIndex
CREATE INDEX `Event_organizationId_idx` ON `Event`(`organizationId`);

-- CreateIndex
CREATE INDEX `Referral_organizationId_idx` ON `Referral`(`organizationId`);

-- CreateIndex
CREATE INDEX `Service_organizationId_idx` ON `Service`(`organizationId`);

-- CreateIndex
CREATE INDEX `SoftwareProduct_organizationId_idx` ON `SoftwareProduct`(`organizationId`);

-- CreateIndex
CREATE INDEX `SoftwareProductCategory_organizationId_idx` ON `SoftwareProductCategory`(`organizationId`);
