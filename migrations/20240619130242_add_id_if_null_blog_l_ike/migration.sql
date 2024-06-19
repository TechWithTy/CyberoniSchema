-- add generate_cuid() function for future use

CREATE FUNCTION generate_cuid() 
RETURNS CHAR(25) DETERMINISTIC
BEGIN
    DECLARE timestamp_part CHAR(10);
    DECLARE random_part CHAR(12);
    DECLARE counter_part CHAR(3);
    DECLARE full_cuid CHAR(25);
    DECLARE counter INT DEFAULT 0;

    -- Generate the timestamp part
    SET timestamp_part = HEX(UNIX_TIMESTAMP());

    -- Generate the random part
    SET random_part = SUBSTRING(HEX(CONV(FLOOR(RAND() * 0xFFFFFFFFFF), 10, 16)), 1, 12);

    -- Generate the counter part
    SET counter = counter + 1;
    SET counter_part = LPAD(HEX(counter), 3, '0');

    -- Combine parts to form the CUID
    SET full_cuid = CONCAT(timestamp_part, random_part, counter_part);

    -- Return the CUID
    RETURN full_cuid;
END;


-- ADD id to Blog id if it is Null
UPDATE `BlogLike` SET id = generate_cuid() WHERE id IS NULL;

