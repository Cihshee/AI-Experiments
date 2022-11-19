/*
 Navicat Premium Data Transfer

 Source Server         : zzz
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : localhost:3306
 Source Schema         : production

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : 65001

 Date: 18/10/2021 20:41:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rule
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule`  (
  `id` int(10) NOT NULL,
  `Size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `Characters` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `Vehicle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `Results` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rule
-- ----------------------------
INSERT INTO `rule` VALUES (0, '小', '有轮子', '', '车');
INSERT INTO `rule` VALUES (1, '大', '流线型', '', '飞机');
INSERT INTO `rule` VALUES (2, '', '天上飞的', '', '飞机');
INSERT INTO `rule` VALUES (3, '', '水上游的', '', '船');
INSERT INTO `rule` VALUES (4, '', '地上跑的', '', '车');
INSERT INTO `rule` VALUES (5, '大', '冒黑烟', '船', '轮船');
INSERT INTO `rule` VALUES (6, '', '有机翼', '飞机', '航天飞机');
INSERT INTO `rule` VALUES (7, '', '有螺旋桨', '飞机', '直升机');
INSERT INTO `rule` VALUES (8, '', '有四个轮', '车', '汽车');
INSERT INTO `rule` VALUES (9, '', '有两个轮', '车', '自行车');
INSERT INTO `rule` VALUES (10, '小', '以电能为动力源', '车', '电动车');

-- ----------------------------
-- Table structure for synthesis
-- ----------------------------
DROP TABLE IF EXISTS `synthesis`;
CREATE TABLE `synthesis`  (
  `facts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of synthesis
-- ----------------------------
INSERT INTO `synthesis` VALUES ('水上游的', 1);
INSERT INTO `synthesis` VALUES ('大', 2);
INSERT INTO `synthesis` VALUES ('冒黑烟', 3);
INSERT INTO `synthesis` VALUES ('水上游的', 4);
INSERT INTO `synthesis` VALUES ('小', 5);
INSERT INTO `synthesis` VALUES ('速度快', 6);
INSERT INTO `synthesis` VALUES ('小', 7);
INSERT INTO `synthesis` VALUES ('地上跑的', 8);
INSERT INTO `synthesis` VALUES ('以电能为动力源', 9);
INSERT INTO `synthesis` VALUES ('小', 10);
INSERT INTO `synthesis` VALUES ('有轮子', 11);
INSERT INTO `synthesis` VALUES ('以电能为动力源', 12);
INSERT INTO `synthesis` VALUES ('天上飞的', 13);
INSERT INTO `synthesis` VALUES ('有螺旋桨', 14);
INSERT INTO `synthesis` VALUES ('小', 15);
INSERT INTO `synthesis` VALUES ('有轮子', 16);
INSERT INTO `synthesis` VALUES ('以电能为动力源', 17);
INSERT INTO `synthesis` VALUES ('小', 18);
INSERT INTO `synthesis` VALUES ('有轮子', 19);
INSERT INTO `synthesis` VALUES ('四个轮', 20);
INSERT INTO `synthesis` VALUES ('小', 21);
INSERT INTO `synthesis` VALUES ('有轮子', 22);
INSERT INTO `synthesis` VALUES ('四个轮', 23);
INSERT INTO `synthesis` VALUES ('小', 24);
INSERT INTO `synthesis` VALUES ('有轮子', 25);
INSERT INTO `synthesis` VALUES ('有四个轮', 26);
INSERT INTO `synthesis` VALUES ('大', 27);
INSERT INTO `synthesis` VALUES ('流线型', 28);
INSERT INTO `synthesis` VALUES ('有螺旋桨', 29);

SET FOREIGN_KEY_CHECKS = 1;
