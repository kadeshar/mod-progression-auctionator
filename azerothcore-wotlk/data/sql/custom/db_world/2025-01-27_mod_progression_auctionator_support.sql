SET @dbname = DATABASE();
SET @preparedStatement = (SELECT IF(
  (
	SELECT COUNT(*) 
	FROM information_schema.columns 
	WHERE
		table_schema = @dbname
		AND table_name = "mod_auctionator_disabled_items" 
		AND column_name = "added_in_patch"
  ) > 0,
  "SELECT 1",
  "ALTER TABLE mod_auctionator_disabled_items ADD COLUMN added_in_patch INT NULL DEFAULT NULL")
);
PREPARE alterIfNotExists FROM @preparedStatement;
EXECUTE alterIfNotExists;
DEALLOCATE PREPARE alterIfNotExists;