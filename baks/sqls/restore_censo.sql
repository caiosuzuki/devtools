USE [master]
ALTER DATABASE [CheffEscolar] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
BACKUP LOG [CheffEscolar] TO  DISK = N'/var/opt/mssql/data/CheffEscolar_LogBackup_2019-07-04_11-06-36.bak' WITH NOFORMAT, NOINIT,  NAME = N'CheffEscolar_LogBackup_2019-07-04_11-06-36', NOSKIP, NOREWIND, NOUNLOAD,  NORECOVERY ,  STATS = 5
RESTORE DATABASE [CheffEscolar] FROM  DISK = N'/home/caio/devtools/baks/censo.bak' WITH  FILE = 1,  MOVE N'CheffEscolar' TO N'/var/opt/mssql/data/CheffEscolar.mdf',  MOVE N'CheffEscolar_log' TO N'/var/opt/mssql/data/CheffEscolar_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5
ALTER DATABASE [CheffEscolar] SET MULTI_USER
