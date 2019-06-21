#MySql数据库DML：增删改表中数据


#1. 添加数据(增)：


#向student增加一条数据
INSERT INTO student(id,NAME,age,score,birthday,insert_time) VALUES(1,"孙悟空",500,90,NULL,NULL);


#注意：
#1. 列名和值要一一对应。
#2. 如果表名后，不定义列名，则默认给所有列添加值
INSERT INTO student VALUES(2,"白骨精",600,99,NULL,NULL);
#3. 除了数字类型，其他类型需要使用引号(单双都可以)引起来


#2.删除数据


#1.删除所有

#1.1删除表中所有数据  不推荐使用。有多少条记录就会执行多少次删除操作
DELETE FROM student; 
#注意：如果不加条件，则删除表中所有记录。
#1.2删除表中所有数据  推荐使用，效率更高 先删除表，然后再创建一张一样的表。
TRUNCATE TABLE student; 

#2.根据条件删除

#删除id等于1的数据
DELETE FROM student WHERE id = 1;


#3.修改数据


#1.将student表中id=1的数据name改为papa,age改为20
UPDATE student SET  NAME = "papa",age = 20 WHERE id = 1;
#2.如果不加任何条件，则会将表中所有记录全部修改。将表中所有数据的name改为w,age改为2
UPDATE student SET  NAME = "w",age = 2;


#4.查询数据


#1.查询student表中所有数据
SELECT * FROM student;
#2.查询student表中id=1的数据
SELECT * FROM student WHERE id =1;