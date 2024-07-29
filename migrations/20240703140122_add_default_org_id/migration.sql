-- UPdate use Org ID.

SET @Owner := (SELECT id FROM `User` WHERE email = 'cyberboss@cybershoptech.com');
SET @DefaultOwnerId := IF( @Owner is not null, @Owner, generate_cuid()) ;
SET @Organization := (SELECT id FROM `Organization` WHERE name = 'Default');
SET @defaultOrgId := IF( @Organization is not null, @Owner, generate_cuid());

UPDATE User  SET organizationId = @defaultOrgId;