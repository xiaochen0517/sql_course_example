# 算术操作符
SELECT 100 + 50 AS 'Addition';
SELECT 100 - 50 AS 'Subtraction';
SELECT 100 * 50 AS 'Multiplication';
SELECT 100 / 50 AS 'Division';

# 算术操作符，结合数据库表字段
SELECT name, age + 100
FROM leaders
WHERE id = 1;

# 比较操作符
-- 年龄大于30
SELECT name, age
FROM leaders
WHERE age > 30;
-- 年龄小于30
SELECT name, age
FROM leaders
WHERE age < 30;
-- 年龄在30到40之间
SELECT name, age
FROM leaders
WHERE age BETWEEN 30 AND 40;
select name, age from leaders where age > 30 and age < 40;
-- 年龄为35或21
SELECT name, age
FROM leaders
WHERE age IN (35, 21);

# 位操作符
SELECT 5 & 3 AS result;
-- 5 (binary: 101) & 3 (binary: 011) = 1 (binary: 001)
-- Result: 1

SELECT 5 << 1 AS result;
-- 5 (binary: 101) << 1 = 10 (binary: 1010)
-- Result: 10

SELECT 5 >> 1 AS result;
-- 5 (binary: 101) >> 1 = 2 (binary: 10)
-- Result: 2