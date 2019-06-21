#DQL：查询表中的记录

# select * from 表名;

# 1.语法：
--	select
--		字段列表
--	from
--		表名列表
--	where
--		条件列表
--	group by
--		分组字段
--	having
--		分组之后的条件
--	order by
--		排序
--	limit
--		分页限定


#2. 基础查询


#1.多个字段的查询
 
#1.1从student表中查询所有name,age字段
SELECT  NAME,age FROM student;
#1.2去除重复 从student表中查询name不重复的name,重复的只显示一个
SELECT  DISTINCT  NAME FROM student;
#注意
SELECT  DISTINCT  NAME, age FROM student; -- 这里如果name,age有一个不相同便不算重复

#3.计算查询(将null转为0)

#将t1表的m列和n列相加，如果有null值转为0，这里的s是IFNULL(m,0)+IFNULL(n,0)的别名
SELECT t1.*,IFNULL(m,0)+IFNULL(n,0) S FROM t1; 


#4.条件查询

  --1. where子句后跟条件
  --2. 运算符
  --	 > 、< 、<= 、>= 、= 、<>
  --	BETWEEN...AND  
  --	IN( 集合) 
  --	LIKE：模糊查询
  --    占位符：
  --	 _:单个任意字符
  --    %：多个任意字符
  --	IS NULL  
  --    and  或 &&
  --	or  或 || 
  --	not  或 !
  
  -- 查询年龄大于20岁

			SELECT * FROM student WHERE age > 20;
			
			SELECT * FROM student WHERE age >= 20;
			
			-- 查询年龄等于20岁
			SELECT * FROM student WHERE age = 20;
			
			-- 查询年龄不等于20岁
			SELECT * FROM student WHERE age != 20;
			SELECT * FROM student WHERE age <> 20;
			
			-- 查询年龄大于等于20 小于等于30
			
			SELECT * FROM student WHERE age >= 20 &&  age <=30;
			SELECT * FROM student WHERE age >= 20 AND  age <=30;
			SELECT * FROM student WHERE age BETWEEN 20 AND 30;
			
			-- 查询年龄22岁，18岁，25岁的信息
			SELECT * FROM student WHERE age = 22 OR age = 18 OR age = 25
			SELECT * FROM student WHERE age IN (22,18,25);
			
			-- 查询英语成绩为null
			SELECT * FROM student WHERE english = NULL; -- 不对的。null值不能使用 = （!=） 判断
			
			SELECT * FROM student WHERE english IS NULL;
			
			-- 查询英语成绩不为null
			SELECT * FROM student WHERE english  IS NOT NULL;

	