-- 请查询出年龄 `age` 大于 `30` 小于 `40` 且姓王的 `leader` 。
SELECT *
FROM leaders
WHERE age BETWEEN 30 AND 40
  AND name LIKE '王%';

-- 请查询当前 `leaders` 表中男性和女性的 `leader` 分别有多少。
SELECT gender, COUNT(*)
FROM leaders
GROUP BY gender;

-- 请查询 `leaders` 表 `name` , `age` 和 `email` 字段的内容，且 `email`  字段只需要域名 `domain`  名称部分并大写。
SELECT name, age, UPPER(SUBSTRING_INDEX(SUBSTRING_INDEX(email, '@', -1), '.', 1)) AS domain
FROM leaders;