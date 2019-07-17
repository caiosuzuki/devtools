USE [master]
ALTER DATABASE [CheffEscolar_Aquisicao] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
BACKUP LOG [CheffEscolar_Aquisicao] TO  DISK = N'/var/opt/mssql/data/CheffEscolar_Aquisicao_LogBackup_2019-07-04_11-07-12.bak' WITH NOFORMAT, NOINIT,  NAME = N'CheffEscolar_Aquisicao_LogBackup_2019-07-04_11-07-12', NOSKIP, NOREWIND, NOUNLOAD,  NORECOVERY ,  STATS = 5
RESTORE DATABASE [CheffEscolar_Aquisicao] FROM  DISK = N'/home/caio/devtools/baks/aquisicao.bak' WITH  FILE = 1,  MOVE N'CheffEscolar_Aquisicao' TO N'/var/opt/mssql/data/CheffEscolar_Aquisicao.mdf',  MOVE N'CheffEscolar_Aquisicao_log' TO N'/var/opt/mssql/data/CheffEscolar_Aquisicao_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5
ALTER DATABASE [CheffEscolar_Aquisicao] SET MULTI_USER
