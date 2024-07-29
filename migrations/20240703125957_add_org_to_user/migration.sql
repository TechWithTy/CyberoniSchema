/*
  Warnings:

  - You are about to drop the `_OrganizationToUser` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterTable
ALTER TABLE `User` ADD COLUMN `organizationId` VARCHAR(191) NULL;

-- DropTable
DROP TABLE `_OrganizationToUser`;

-- CreateIndex
CREATE INDEX `User_organizationId_idx` ON `User`(`organizationId`);

-- save ids
SET @defaultOrgId := (generate_cuid());
SET @Owner := (SELECT id FROM `User` WHERE email = 'cyberboss@cybershoptech.com');
SET @DefaultOwnerId := IF( @Owner is not null, @Owner, generate_cuid()) ;
-- create Default organization
INSERT INTO `Organization` (`id`, `name`) VALUES (@defaultOrgId, 'Default');

-- create Default Owner
INSERT INTO `OrganizationOwner` (`id`, `organizationId`, `userId`) VALUES (generate_cuid(), @defaultOrgId, @DefaultOwnerId);

-- add OrganizationId to User

