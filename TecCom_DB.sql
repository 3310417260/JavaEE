/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/12/2022 14:37:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_good1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_good2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `read_by` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('x1', 'no', 'yes', 'Springboot详解', 256);
INSERT INTO `article` VALUES ('x2', 'no', 'no', 'Mybatis详解', 2666);
INSERT INTO `article` VALUES ('x3', 'no', 'yes', '栈溢出详解', 29900);
INSERT INTO `article` VALUES ('x4', 'no', 'no', 'off by null漏洞', 123);
INSERT INTO `article` VALUES ('x5', 'yes', 'no', 'v8源码分析', 456);
INSERT INTO `article` VALUES ('x6', 'no', 'yes', 'v8中的类型混淆漏洞利用', 2212);
INSERT INTO `article` VALUES ('x7', 'yes', 'no', 'JavaEE开发', 122);
INSERT INTO `article` VALUES ('x8', 'yes', 'no', '算法基础', 121);

-- ----------------------------
-- Table structure for bbs_user
-- ----------------------------
DROP TABLE IF EXISTS `bbs_user`;
CREATE TABLE `bbs_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userroles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `userpics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `messages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bbs_user
-- ----------------------------
INSERT INTO `bbs_user` VALUES (1, 'a', 'a', 'a', 'a', 'a');

-- ----------------------------
-- Table structure for dev
-- ----------------------------
DROP TABLE IF EXISTS `dev`;
CREATE TABLE `dev`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changetime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dev
-- ----------------------------
INSERT INTO `dev` VALUES (1, 'test2', NULL, '2022-12-22 02:47:22', NULL, 'a');
INSERT INTO `dev` VALUES (2, 'test3', NULL, '2022-12-22 02:49:45', NULL, 'a');
INSERT INTO `dev` VALUES (3, 'test8', NULL, '2022-12-22 02:58:59', NULL, 'a');
INSERT INTO `dev` VALUES (4, 'test8', NULL, '2022-12-22 02:59:46', NULL, 'a');
INSERT INTO `dev` VALUES (5, 'dbtest1', NULL, '2022-12-22 03:26:35', NULL, 'a');
INSERT INTO `dev` VALUES (6, 'dbtest2', NULL, '2022-12-22 03:29:14', NULL, 'a');
INSERT INTO `dev` VALUES (7, 'dbtest3', NULL, '2022-12-22 03:33:06', NULL, 'a');

-- ----------------------------
-- Table structure for devwith
-- ----------------------------
DROP TABLE IF EXISTS `devwith`;
CREATE TABLE `devwith`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changetime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `withc` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of devwith
-- ----------------------------
INSERT INTO `devwith` VALUES (1, NULL, '<p>dbtest3</p>', '2022-12-22 03:33:11', NULL, 'a', 7);

-- ----------------------------
-- Table structure for exp
-- ----------------------------
DROP TABLE IF EXISTS `exp`;
CREATE TABLE `exp`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changetime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exp
-- ----------------------------
INSERT INTO `exp` VALUES (1, 'dbtest1', NULL, '2022-12-22 03:40:36', NULL, 'a');
INSERT INTO `exp` VALUES (2, 'dbtest2', NULL, '2022-12-22 03:41:58', NULL, 'a');
INSERT INTO `exp` VALUES (3, 'dbtest3', NULL, '2022-12-22 03:43:12', NULL, 'a');

-- ----------------------------
-- Table structure for expwith
-- ----------------------------
DROP TABLE IF EXISTS `expwith`;
CREATE TABLE `expwith`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changetime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `withc` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of expwith
-- ----------------------------
INSERT INTO `expwith` VALUES (1, NULL, '<p>dbtest3</p>', '2022-12-22 03:43:17', NULL, 'a', 3);

-- ----------------------------
-- Table structure for security
-- ----------------------------
DROP TABLE IF EXISTS `security`;
CREATE TABLE `security`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changetime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of security
-- ----------------------------
INSERT INTO `security` VALUES (1, 'test', NULL, '2022-12-22 02:45:23', NULL, 'a');
INSERT INTO `security` VALUES (2, 'test4', NULL, '2022-12-22 02:51:34', NULL, 'a');
INSERT INTO `security` VALUES (3, 'test5', NULL, '2022-12-22 02:52:19', NULL, 'a');
INSERT INTO `security` VALUES (4, 'test6', NULL, '2022-12-22 02:54:30', NULL, 'a');
INSERT INTO `security` VALUES (5, 'test7', NULL, '2022-12-22 02:56:49', NULL, 'a');
INSERT INTO `security` VALUES (6, 'dbtest', NULL, '2022-12-22 03:14:23', NULL, 'a');
INSERT INTO `security` VALUES (7, 'dbtest2', NULL, '2022-12-22 03:17:31', NULL, 'a');
INSERT INTO `security` VALUES (8, 'dbtest3', NULL, '2022-12-22 03:20:24', NULL, 'a');
INSERT INTO `security` VALUES (9, 'dbtest4', NULL, '2022-12-22 03:22:28', NULL, 'a');
INSERT INTO `security` VALUES (10, 'a', NULL, '2022-12-22 05:07:29', NULL, 'a');

-- ----------------------------
-- Table structure for securitywith
-- ----------------------------
DROP TABLE IF EXISTS `securitywith`;
CREATE TABLE `securitywith`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changetime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `withc` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of securitywith
-- ----------------------------
INSERT INTO `securitywith` VALUES (1, NULL, '<p>aaaaaaaaaaaaaaaaaaaaaaa</p>', '2022-12-22 02:54:53', NULL, 'a', 4);
INSERT INTO `securitywith` VALUES (2, NULL, '<p>dbtest4</p>', '2022-12-22 03:22:32', NULL, 'a', 9);

-- ----------------------------
-- Table structure for web3
-- ----------------------------
DROP TABLE IF EXISTS `web3`;
CREATE TABLE `web3`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changetime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web3
-- ----------------------------
INSERT INTO `web3` VALUES (1, 'dbtest2', NULL, '2022-12-22 03:47:09', NULL, 'a');
INSERT INTO `web3` VALUES (2, 'final test', NULL, '2022-12-22 03:59:32', NULL, 'a');

-- ----------------------------
-- Table structure for web3with
-- ----------------------------
DROP TABLE IF EXISTS `web3with`;
CREATE TABLE `web3with`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `createdtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `changetime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `withc` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web3with
-- ----------------------------
INSERT INTO `web3with` VALUES (1, NULL, '<p>dbtest2</p>', '2022-12-22 03:47:13', NULL, 'a', 1);
INSERT INTO `web3with` VALUES (2, NULL, '<p>final test</p>', '2022-12-22 03:59:43', NULL, 'a', 2);

SET FOREIGN_KEY_CHECKS = 1;
