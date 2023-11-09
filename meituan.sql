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

 Date: 08/11/2023 12:01:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `consignee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 1, '张三', '1', '13712345678', '浙江农林大学', '学校', '0', '2023-11-02 08:52:03');
INSERT INTO `address` VALUES (2, 1, '丁真', '1', '18912345678', '浙江大学', NULL, '1', '2023-11-02 15:46:44');
INSERT INTO `address` VALUES (3, 2, '丁真', '0', '12345548999', '浙江工业大学', '学校', '0', '2023-11-07 14:41:10');
INSERT INTO `address` VALUES (4, 2, '丁真珍珠', '1', '12345678999', '临安公园', '家', '1', '2023-11-07 14:43:08');

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
  `month_sale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '食物月售',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, 4, '奥利奥奶茶', 'http://10.0.2.2:9000/meituan/foodtest2.png', '14', '100');
INSERT INTO `food` VALUES (2, 4, '珍珠奶茶', 'http://10.0.2.2:9000/meituan/foodtest1.png', '10', '120');
INSERT INTO `food` VALUES (3, 2, '藤椒鸡腿汉堡', 'http://10.0.2.2:9000/meituan/foodtest3.png', '14', '200');
INSERT INTO `food` VALUES (4, 2, '多汁牛肉中国堡', 'http://10.0.2.2:9000/meituan/foodtest4.png', '18', '80');

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
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '店铺名字',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '店铺图片',
  `store_score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺评分',
  `month_sale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺月售',
  `people_avg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺人均',
  `minTakeOut_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '起送价格',
  `delivery_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '配送价格',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '店铺评论',
  `store_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺类型',
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '瑞幸咖啡', 'http://10.0.2.2:9000/meituan/test.png', '4.7', '1000', '25', '20', '5', '难喝啊', '2', '【开票相关】请用订单手机号登录瑞幸咖啡小程序开具发票。\n');
INSERT INTO `store` VALUES (2, '塔斯汀·中国汉堡', 'http://10.0.2.2:9000/meituan/test1.png', '4.6', '2000', '25', '20', '0', '不愧是中国汉堡', '1', '中国汉堡');
INSERT INTO `store` VALUES (3, '小菜园新徽菜', 'http://10.0.2.2:9000/meituan/test2.png', '4.9', '1000', '33', '25', '4', '近期1000人下单', '1', '欢迎来到小菜园');
INSERT INTO `store` VALUES (4, '茶百道', 'http://10.0.2.2:9000/meituan/test3.png', '4.9', '1000', '14', '16', '9', '大众点评高分店铺', '2', '茶百道');
INSERT INTO `store` VALUES (5, '麦啃基', 'http://10.0.2.2:9000/meituan/test1.png', '5.0', '100', '15', '15', '3', '就是好吃', '1', NULL);
INSERT INTO `store` VALUES (6, '永辉超市', 'http://10.0.2.2:9000/meituan/test2.png', '4.8', '500', '45', '25', '6', '很新鲜', '3', NULL);
INSERT INTO `store` VALUES (7, '丰鲜水果', 'http://10.0.2.2:9000/meituan/test3.png', '4.7', '500', '25', '20', '5', '果子很好', '4', NULL);

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
INSERT INTO `user_code` VALUES ('13712345678', '300824');

SET FOREIGN_KEY_CHECKS = 1;
