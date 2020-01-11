# Author: Zibnitskii Aleksandr 
# 
# Усечение журнала транзакций
# Логично что, БД должна находиться в режиме FULL
# <DB name> должно быть заменено на имя БД (без кавычек)  
#
USE <DB name>
ALTER DATABASE fito_new SET RECOVERY SIMPLE
GO
DBCC SHRINKFILE (<DB name>, 1); 
ALTER DATABASE fito_new SET RECOVERY FULL
GO
