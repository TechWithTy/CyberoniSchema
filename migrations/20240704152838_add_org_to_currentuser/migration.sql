-- AlterTable
ALTER TABLE `User` ADD COLUMN `data` JSON NULL;

SET @defaultOrgId := (SELECT id FROM `Organization` WHERE name = 'Default');

SET @OrgId := IF( @defaultOrgId is not null, @defaultOrgId, generate_cuid());
-- add users to Default Organization

INSERT INTO `_OrganizationToUser` (`A`, `B`) SELECT @OrgId, id FROM `User`;
