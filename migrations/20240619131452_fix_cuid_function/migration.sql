
-- Drop the existing function if it exists
DROP FUNCTION IF EXISTS generate_cuid;

CREATE FUNCTION generate_cuid() 
RETURNS CHAR(25) DETERMINISTIC
BEGIN
    DECLARE timestamp_part CHAR(10);
    DECLARE counter_part CHAR(3);
    DECLARE full_cuid CHAR(25);
    DECLARE counter INT DEFAULT 0;
	DECLARE random_part_1 CHAR(6);
	DECLARE random_part_2 CHAR(6);

    -- Generate the timestamp part
    SET timestamp_part = HEX(UNIX_TIMESTAMP());

    -- Generate the random part
    SET random_part_1 = SUBSTRING(HEX(CONV(FLOOR(RAND() * 0xFFFFFFFFFF), 10, 16)), 1, 6);
	SET random_part_2 = SUBSTRING(HEX(CONV(FLOOR(RAND() * 0xFFFFFFFFFF), 10, 16)), 1, 6);


    -- Generate the counter part
    SET counter = counter + 1;
    SET counter_part = LPAD(HEX(counter), 3, '0');

    -- Combine parts to form the CUID
    SET full_cuid = LOWER(CONCAT('c', timestamp_part, counter_part, random_part_1 ,random_part_2 ));
    -- Return the CUID
    RETURN full_cuid;
END;


-- ADD id to Blog id if it is Null
UPDATE `BlogLike` SET id = generate_cuid();