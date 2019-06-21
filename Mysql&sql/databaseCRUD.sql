#MySql数据库的CRUD     DDL:操作数据库、表

#1.创建

#1.创建数据库db4
CREATE DATABASE db4;
#2.创建db4数据库，判断是否存在，并制定字符集为utf8
CREATE DATABASE IF NOT EXISTS db4 CHARACTER SET utf8;

#2.查询

#1.查询所有数据库的名称:
SHOW DATABASES;
#2.查询db4数据库的字符集:查询某个数据库的创建语句
SHOW CREATE DATABASE db4;

#3.修改

#1.修改db4数据库的字符集为gbk
ALTER DATABASE db4 CHARACTER SET gbk;

#4.删除
	
#1.删除db4数据库
DROP DATABASE db4;
#判断db4数据库是否存在，存在再删除
DROP DATABASE IF EXISTS db4;

#5.使用数据库

#1.查询当前正在使用的数据库名称
SELECT DATABASE();
#2.使用数据库
USE ssm;