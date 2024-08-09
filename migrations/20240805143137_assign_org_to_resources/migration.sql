-- Assign Default Organization to existing resources 
SET @Owner := (SELECT id FROM `User` WHERE email = 'cyberboss@cybershoptech.com');
SET @DefaultOwnerId := IF( @Owner is not null, @Owner, generate_cuid()) ;
SET @Organization := (SELECT id FROM `Organization` WHERE name = 'Default');
SET @defaultOrgId := IF( @Organization is not null, @Organization, generate_cuid());

UPDATE Blog  SET organizationId = @defaultOrgId;
UPDATE BlogCategory  SET organizationId = @defaultOrgId;
UPDATE CaseStudy  SET organizationId = @defaultOrgId;
UPDATE SoftwareProduct  SET organizationId = @defaultOrgId;
UPDATE SoftwareProductCategory  SET organizationId = @defaultOrgId;
UPDATE `Event`  SET organizationId = @defaultOrgId;
UPDATE Referral  SET organizationId = @defaultOrgId;
UPDATE Discount  SET organizationId = @defaultOrgId;
UPDATE `Service`  SET organizationId = @defaultOrgId;
