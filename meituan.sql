/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : meituan

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 01/11/2023 20:57:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int NOT NULL COMMENT '食物id',
  `store_id` int NOT NULL COMMENT '店铺id',
  `food_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '食物名字',
  `food_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '食物图片',
  `food_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '食物价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, 1, '奥利奥奶茶', 'foodtest2', '14');
INSERT INTO `food` VALUES (2, 1, '珍珠奶茶', 'foodtest1', '10');
INSERT INTO `food` VALUES (3, 2, '藤椒鸡腿汉堡', 'foodtest3', '14');
INSERT INTO `food` VALUES (4, 2, '多汁牛肉中国堡', 'foodtest4', '18');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL COMMENT '订单id',
  `user_id` int NOT NULL COMMENT '用户id',
  `food_id` int NOT NULL COMMENT '食物id',
  `store_id` int NOT NULL COMMENT '店铺id',
  `order_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单金额',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '订单状态',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `order_time` datetime NOT NULL COMMENT '订单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 1, 1, 4, '14', '0', '202310312333', '2023-10-31 23:33:31');
INSERT INTO `orders` VALUES (2, 1, 2, 4, '10', '0', '202310312333', '2023-10-31 23:34:15');
INSERT INTO `orders` VALUES (3, 1, 3, 2, '14', '0', '202311010950', '2023-11-01 09:50:32');
INSERT INTO `orders` VALUES (4, 1, 4, 2, '18', '0', '202311010950', '2023-11-01 09:50:53');
INSERT INTO `orders` VALUES (5, 1, 1, 4, '14', '0', '202311011741', '2023-11-01 17:41:08');
INSERT INTO `orders` VALUES (6, 1, 2, 4, '10', '0', '202311011741', '2023-11-01 17:41:39');
INSERT INTO `orders` VALUES (7, 1, 1, 4, '14', '0', '202311011741', '2023-11-01 17:42:01');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺名字',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺图片',
  `store_score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺评分',
  `month_sale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺月售',
  `people_avg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺人均',
  `minTakeOut_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '起送价格',
  `delivery_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配送价格',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '店铺评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '瑞幸咖啡', 'test', '4.7', '1000', '25', '20', '5', '难喝啊');
INSERT INTO `store` VALUES (2, '塔斯汀·中国汉堡', 'test1', '4.6', '2000', '25', '20', '0', '不愧是中国汉堡');
INSERT INTO `store` VALUES (3, '小菜园新徽菜', 'test2', '4.9', '1000', '33', '25', '4', '近期1000人下单');
INSERT INTO `store` VALUES (4, '茶百道', 'test3', '4.9', '1000', '14', '16', '9', '大众点评高分店铺');
INSERT INTO `store` VALUES (5, '你知道的科比是一位天赋及其炸裂的球员', 'test1', '5.0', '100', '15', '15', '3', '我没意见');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '13712345678', '123456');
INSERT INTO `user` VALUES (2, '11111111111', '123456');
INSERT INTO `user` VALUES (3, '12345678901', '123456');

-- ----------------------------
-- Table structure for user_code
-- ----------------------------
DROP TABLE IF EXISTS `user_code`;
CREATE TABLE `user_code`  (
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`phone_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_code
-- ----------------------------
INSERT INTO `user_code` VALUES ('11111111111', '');
INSERT INTO `user_code` VALUES ('12345678901', '');
INSERT INTO `user_code` VALUES ('13712345678', '');

SET FOREIGN_KEY_CHECKS = 1;
