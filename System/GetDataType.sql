SELECT DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE 
     TABLE_NAME = 'DailyLog' AND 
     COLUMN_NAME = 'Date'