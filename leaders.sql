/*
 Navicat Premium Data Transfer

 Source Server         : rm-uf60zdn8pso35p16h3o.mysql.rds.aliyuncs.com_3306
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : rm-uf60zdn8pso35p16h3o.mysql.rds.aliyuncs.com:3306
 Source Schema         : lesson_db

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 15/11/2024 20:10:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for leaders
-- ----------------------------
DROP TABLE IF EXISTS `leaders`;
CREATE TABLE `leaders`  (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `age` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leaders
-- ----------------------------
INSERT INTO `leaders` VALUES (1, '薛岚', 45, 'lanxu614@gmail.com', '女');
INSERT INTO `leaders` VALUES (2, '周岚', 37, 'lz721@mail.com', '女');
INSERT INTO `leaders` VALUES (3, '孔詩涵', 21, 'kongshih9@yahoo.com', '女');
INSERT INTO `leaders` VALUES (4, '方云熙', 49, 'yunxi5@icloud.com', '男');
INSERT INTO `leaders` VALUES (5, '王岚', 35, 'lanwang320@mail.com', '女');
INSERT INTO `leaders` VALUES (6, '徐宇宁', 29, 'yx5@gmail.com', '男');
INSERT INTO `leaders` VALUES (7, '唐子异', 34, 'tang10@gmail.com', '男');
INSERT INTO `leaders` VALUES (8, '沈杰宏', 38, 'shjiehong@gmail.com', '男');
INSERT INTO `leaders` VALUES (9, '薛云熙', 36, 'yuxue2011@outlook.com', '男');
INSERT INTO `leaders` VALUES (10, '曾杰宏', 43, 'zengjiehong6@mail.com', '男');
INSERT INTO `leaders` VALUES (11, '龚璐', 21, 'gonglu2@gmail.com', '女');
INSERT INTO `leaders` VALUES (12, '程安琪', 22, 'canq@icloud.com', '女');
INSERT INTO `leaders` VALUES (13, '朱震南', 49, 'zhu1969@outlook.com', '男');
INSERT INTO `leaders` VALUES (14, '史秀英', 41, 'shxiuying@outlook.com', '女');
INSERT INTO `leaders` VALUES (15, '朱岚', 22, 'zhul@gmail.com', '女');
INSERT INTO `leaders` VALUES (16, '张致远', 32, 'zzh@gmail.com', '男');
INSERT INTO `leaders` VALUES (17, '邓安琪', 28, 'denan@gmail.com', '女');
INSERT INTO `leaders` VALUES (18, '陆睿', 43, 'luru@outlook.com', '男');
INSERT INTO `leaders` VALUES (19, '崔杰宏', 20, 'jiehong819@gmail.com', '男');
INSERT INTO `leaders` VALUES (20, '林晓明', 39, 'linxi@hotmail.com', '男');

SET FOREIGN_KEY_CHECKS = 1;
