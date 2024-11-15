# 函数
SELECT NOW();

# 二进制显示函数
SELECT BIN(5 & 3) AS result;
SELECT BIN(5 << 1) AS result;
SELECT BIN(5 >> 1) AS result;

# 聚合函数示例
SELECT COUNT(*) AS total
FROM leaders;

SELECT AVG(age) AS average
FROM leaders;
-- 忽略平均年龄的小数
SELECT FLOOR(AVG(age)) AS average
FROM leaders;

# 窗口函数示例
-- ROW_NUMBER() 为每行分配一个唯一的整数
SELECT *, ROW_NUMBER() OVER ()
FROM leaders
where age > 30;

-- RANK() 为每行分配一个唯一的整数
SELECT *, RANK() OVER (ORDER BY age DESC)
FROM leaders
where age > 30;

# 数学函数示例
-- ABS 取绝对值
SELECT ABS(-1);

-- CEIL 向上取整
SELECT CEIL(1.1);

-- FLOOR 向下取整
SELECT FLOOR(1.1);

# 字符串函数示例
-- CONCAT 连接字符串
SELECT CONCAT('hello', 'world');

-- LENGTH 获取字符串长度
SELECT LENGTH('hello');

-- LOWER 转换为小写
SELECT LOWER('HELLO');

-- UPPER 转换为大写
SELECT UPPER('hello');

# 时间日期函数示例
-- CURRENT_DATE 获取当前日期
SELECT CURRENT_DATE();

-- CURRENT_TIME 获取当前时间
SELECT CURRENT_TIME();

-- 格式化日期
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i');

# 条件函数示例
-- 如果 age 大于 30 则返回 'old' 否则返回 'young'
SELECT IF(`age` > 30, 'old', 'young') AS type, `name`, `age`
FROM leaders;

# JSON 函数示例
-- 解析 JSON
SELECT JSON_EXTRACT('{
  "name": "Tom",
  "age": 18
}', '$.name');

-- Json Path 表达式
-- $ 表示根节点
-- .key 表示对象的 key
-- [index] 表示数组的索引
-- [*] 表示数组的所有元素
SELECT JSON_EXTRACT('{
  "name": "Tom",
  "age": 18,
  "friends": [
    "Jerry",
    "Spike"
  ]
}', '$.friends[1]') AS friend;
SELECT JSON_EXTRACT('{
  "name": "Tom",
  "age": 18,
  "info": {
    "address": "Beijing"
  }
}', '$.info.address') AS address;

-- 创建 JSON 对象
SELECT JSON_OBJECT('name', 'Tom', 'age', 18);

-- 创建 JSON 数组
SELECT JSON_ARRAY('Tom', 'Jerry');

# 加密函数示例
-- MD5 加密
SELECT MD5('hello');

-- SHA1 加密
SELECT SHA1('hello');

-- AES 加密
SELECT AES_ENCRYPT('hello', 'key');

# 数据库信息函数示例
-- CONNECTION_ID 获取连接 ID
SELECT CONNECTION_ID();

-- DATABASE 获取当前数据库名
SELECT DATABASE();

-- VERSION 获取数据库版本
SELECT VERSION();