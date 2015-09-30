USE [master]
EXEC master.dbo.sp_detach_db @dbname = N'SDM'
RESTORE DATABASE [SDM] FROM  DISK = N'U:\MSSQL11.MSSQLSERVER\MSSQL\Backup\SFTP_Clients\virpindmisdb01\encrypted\SDM.BAK' WITH  FILE = 1,  NOUNLOAD,  REPLACE,  STATS = 5




