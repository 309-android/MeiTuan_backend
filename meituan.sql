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

 Date: 04/01/2024 13:31:08
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
  `consignee` varchar(255) CHARACTER SET utf8mb4   NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4   NOT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8mb4   NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8mb4   NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL,
  `is_default` varchar(255) CHARACTER SET utf8mb4   NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4   ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 1, '张三', '1', '13712345678', '浙江农林大学', '学校', '1', '2023-11-02 08:52:03');
INSERT INTO `address` VALUES (2, 1, '丁真', '1', '18912345678', '浙江大学', NULL, '0', '2023-11-02 15:46:44');
INSERT INTO `address` VALUES (3, 2, '丁真', '0', '12345548999', '浙江工业大学', '学校', '0', '2023-11-07 14:41:10');
INSERT INTO `address` VALUES (4, 2, '丁真珍珠', '1', '12345678999', '临安公园', '家', '1', '2023-11-07 14:43:08');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4   NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4   ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 4, '奶茶');
INSERT INTO `category` VALUES (2, 4, '果茶');
INSERT INTO `category` VALUES (3, 4, '招牌');
INSERT INTO `category` VALUES (4, 2, '汉堡');
INSERT INTO `category` VALUES (5, 4, '真鲜奶茶');
INSERT INTO `category` VALUES (6, 4, '招牌奶茶');
INSERT INTO `category` VALUES (7, 4, '找鲜果茶');
INSERT INTO `category` VALUES (8, 4, '牧场酸奶');
INSERT INTO `category` VALUES (9, 4, '真鲜纯茶');
INSERT INTO `category` VALUES (10, 4, '加小料区');
INSERT INTO `category` VALUES (11, 1, '新品上市');
INSERT INTO `category` VALUES (12, 1, '进店必喝');
INSERT INTO `category` VALUES (13, 1, '酱香拿铁');
INSERT INTO `category` VALUES (14, 1, '中国茶咖');
INSERT INTO `category` VALUES (15, 1, '只喝美式');
INSERT INTO `category` VALUES (16, 1, '经典奶咖');
INSERT INTO `category` VALUES (17, 1, '不喝咖啡');
INSERT INTO `category` VALUES (18, 1, '轻食甜品');
INSERT INTO `category` VALUES (19, 1, '热卖套餐');
INSERT INTO `category` VALUES (20, 1, '贴纸套餐');
INSERT INTO `category` VALUES (21, 1, '秋冬暖咖');
INSERT INTO `category` VALUES (22, 2, '特惠爆款');
INSERT INTO `category` VALUES (23, 2, '自选套餐');
INSERT INTO `category` VALUES (24, 2, '必点套餐');
INSERT INTO `category` VALUES (25, 2, '新品来袭');
INSERT INTO `category` VALUES (26, 2, '中国汉堡');
INSERT INTO `category` VALUES (27, 2, '美味小食');
INSERT INTO `category` VALUES (28, 2, '家庭套餐');
INSERT INTO `category` VALUES (29, 2, '带你吃鸡');
INSERT INTO `category` VALUES (30, 2, '饮品驿站');
INSERT INTO `category` VALUES (31, 2, '推荐');
INSERT INTO `category` VALUES (32, 2, '温馨提示');
INSERT INTO `category` VALUES (33, 8, '卤智深蔬菜');
INSERT INTO `category` VALUES (34, 8, '卤智深黑鸦类');
INSERT INTO `category` VALUES (35, 8, '卤智深秘制辣椒');
INSERT INTO `category` VALUES (36, 8, '卤智深饮品类');
INSERT INTO `category` VALUES (37, 7, '神价');
INSERT INTO `category` VALUES (38, 7, '冬季推荐');
INSERT INTO `category` VALUES (39, 7, '小爱礼盒');
INSERT INTO `category` VALUES (40, 7, 'DIY水果捞');
INSERT INTO `category` VALUES (41, 3, '推荐');
INSERT INTO `category` VALUES (42, 3, '香锅下饭菜');
INSERT INTO `category` VALUES (43, 3, '养生粥煲汤');
INSERT INTO `category` VALUES (44, 3, '一人实惠套餐');
INSERT INTO `category` VALUES (45, 3, '徽州精选饭');
INSERT INTO `category` VALUES (46, 6, '活动');
INSERT INTO `category` VALUES (47, 6, '火锅到家');
INSERT INTO `category` VALUES (48, 6, '时令鲜蔬');
INSERT INTO `category` VALUES (49, 6, '肉蛋家禽');
INSERT INTO `category` VALUES (50, 6, '熟食冻品');
INSERT INTO `category` VALUES (51, 6, '酒水饮料');
INSERT INTO `category` VALUES (52, 6, '休闲零食');
INSERT INTO `category` VALUES (53, 7, '热带水果');
INSERT INTO `category` VALUES (54, 9, '神价');
INSERT INTO `category` VALUES (55, 9, '0.01元购');
INSERT INTO `category` VALUES (56, 9, '元旦跨年有礼');
INSERT INTO `category` VALUES (57, 9, '8.8双拼');
INSERT INTO `category` VALUES (58, 9, '网红吃法');
INSERT INTO `category` VALUES (59, 10, '活动');
INSERT INTO `category` VALUES (60, 10, '大牌补贴');
INSERT INTO `category` VALUES (61, 10, '新年happy');
INSERT INTO `category` VALUES (62, 10, '鲜奶鲜面包');
INSERT INTO `category` VALUES (63, 10, '山姆购购购');
INSERT INTO `category` VALUES (64, 10, '网红冷冻冰糖葫芦');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '食物id',
  `store_id` int NOT NULL COMMENT '店铺id',
  `category_id` int NULL DEFAULT NULL COMMENT '分类',
  `food_name` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '食物名字',
  `food_img` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '食物图片',
  `food_amount` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '食物价格',
  `month_sale` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL COMMENT '食物月售',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4   ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, 4, 3, '奥利奥奶茶', 'http://47.111.162.181:9000/meituan/foodtest2.png', '14', '100');
INSERT INTO `food` VALUES (2, 4, 8, '芒果酸奶', 'http://47.111.162.181:9000/meituan/202401030032.png', '10', '120');
INSERT INTO `food` VALUES (3, 2, 4, '藤椒鸡腿汉堡', 'http://47.111.162.181:9000/meituan/foodtest3.png', '14', '200');
INSERT INTO `food` VALUES (4, 2, 4, '多汁牛肉中国堡', 'http://47.111.162.181:9000/meituan/foodtest4.png', '18', '80');
INSERT INTO `food` VALUES (5, 4, 1, '椰果奶茶', 'http://47.111.162.181:9000/meituan/foodtest1.png', '10', '120');
INSERT INTO `food` VALUES (6, 4, 1, '珍珠奶茶', 'http://47.111.162.181:9000/meituan/foodtest1.png', '10', '120');
INSERT INTO `food` VALUES (7, 4, 5, '七璎茉莉鲜奶茶', 'http://47.111.162.181:9000/meituan/202401030027.png', '14', '55');
INSERT INTO `food` VALUES (8, 4, 2, '茉莉奶青', 'http://47.111.162.181:9000/meituan/202401030028.png', '10', '120');
INSERT INTO `food` VALUES (9, 4, 6, '黑钻陨石牛乳', 'http://47.111.162.181:9000/meituan/202401030029.png', '15', '120');
INSERT INTO `food` VALUES (10, 4, 2, '杨枝甘露', 'http://47.111.162.181:9000/meituan/202401030030.png', '17', '200');
INSERT INTO `food` VALUES (11, 2, 22, '酸菜烤肉中国汉堡+啃\n定香鸡架+冰柠可乐', 'http://47.111.162.181:9000/meituan/20231231164116.png', '42.9', '30');
INSERT INTO `food` VALUES (12, 2, 26, '酸菜烤肉中国汉堡', 'http://47.111.162.181:9000/meituan/20231231165737.png', '20.5', '20');
INSERT INTO `food` VALUES (13, 2, 26, '香辣鸡腿中国汉堡', 'http://47.111.162.181:9000/meituan/20231231165757.png', '14.5', '100');
INSERT INTO `food` VALUES (14, 2, 26, '藤椒鸡腿中国汉堡', 'http://47.111.162.181:9000/meituan/20231231165816.png', '14.5', '14');
INSERT INTO `food` VALUES (15, 7, 37, 'A级-智利车厘子 约100g', 'http://47.111.162.181:9000/meituan/202401020002.png', '19.9', '39');
INSERT INTO `food` VALUES (16, 7, 38, 'A级-红艳草莓 约250g', 'http://47.111.162.181:9000/meituan/202401020003.png', '29.9', '26');
INSERT INTO `food` VALUES (17, 7, 39, '【新年礼盒】A级-智利车厘子 约3斤', 'http://47.111.162.181:9000/meituan/202401020004.png', '199', '0');
INSERT INTO `food` VALUES (18, 7, 40, '【DIY果捞】红心火龙果果切 约350g', 'http://47.111.162.181:9000/meituan/202401020005.png', '24.9', '5');
INSERT INTO `food` VALUES (19, 3, 41, '水煮肉片套餐（免不了辣）', 'http://47.111.162.181:9000/meituan/202401020006.png', '32', '79');
INSERT INTO `food` VALUES (20, 3, 42, '酸辣白菜', 'http://47.111.162.181:9000/meituan/202401020007.png', '15', '82');
INSERT INTO `food` VALUES (21, 3, 43, '排骨毛圆汤（饭前喝暖心又养身）', 'http://47.111.162.181:9000/meituan/202401020008.png', '39', '73');
INSERT INTO `food` VALUES (22, 3, 44, '特色酸辣鱼（小份）套餐', 'http://47.111.162.181:9000/meituan/202401020009.png', '35', '64');
INSERT INTO `food` VALUES (23, 3, 45, '徽州臭鳜鱼（微微臭，大块蒜瓣肉鱼）', 'http://47.111.162.181:9000/meituan/202401020010.png', '132.5', '15');
INSERT INTO `food` VALUES (24, 6, 46, '富贵天下52度牡丹吉祥红钻白酒500ml', 'http://47.111.162.181:9000/meituan/202401020011.png', '69.9', '21');
INSERT INTO `food` VALUES (25, 6, 47, '海底捞浓香牛油火锅底料150g', 'http://47.111.162.181:9000/meituan/202401020012.png', '6.9', '13');
INSERT INTO `food` VALUES (26, 6, 47, '海底捞醇香牛油火锅底料150g', 'http://47.111.162.181:9000/meituan/202401020012.png', '6.9', '9');
INSERT INTO `food` VALUES (27, 6, 48, '西红柿400g', 'http://47.111.162.181:9000/meituan/202401020013.png', '6.99', '100');
INSERT INTO `food` VALUES (28, 6, 48, '祖名豆浆（新老包装随机发货）350ml', 'http://47.111.162.181:9000/meituan/202401020014.png', '1.8', '2');
INSERT INTO `food` VALUES (29, 6, 49, '鲜鸡蛋9枚450g', 'http://47.111.162.181:9000/meituan/202401020015.png', '9.98', '37');
INSERT INTO `food` VALUES (30, 6, 49, '双汇斜切特嫩烤火腿260g', 'http://47.111.162.181:9000/meituan/202401020016.png', '13.9', '4');
INSERT INTO `food` VALUES (31, 1, 11, '诸橙拿铁', 'http://47.111.162.181:9000/meituan/202401020017.png', '21.9', '2');
INSERT INTO `food` VALUES (32, 1, 13, '酱香拿铁', 'http://47.111.162.181:9000/meituan/202401020018.png', '22.9', '36');
INSERT INTO `food` VALUES (33, 1, 12, '丝绒拿铁', 'http://47.111.162.181:9000/meituan/202401030019.png', '22.4', '100');
INSERT INTO `food` VALUES (34, 1, 15, '橙C 美式', 'http://47.111.162.181:9000/meituan/202401030020.png', '22.4', '99');
INSERT INTO `food` VALUES (35, 1, 14, '茉莉花香拿铁', 'http://47.111.162.181:9000/meituan/202401030021.png', '22.4', '26');
INSERT INTO `food` VALUES (36, 1, 15, '加浓 美式', 'http://47.111.162.181:9000/meituan/202401030022.png', '19.4', '61');
INSERT INTO `food` VALUES (37, 1, 16, '拿铁', 'http://47.111.162.181:9000/meituan/202401030023.png', '22.0', '47');
INSERT INTO `food` VALUES (38, 1, 16, '圣诞可露丽拿铁', 'http://47.111.162.181:9000/meituan/202401030024.png', '23.1', '11');
INSERT INTO `food` VALUES (39, 7, 53, 'B级—泰国桂圆 约250g', 'http://47.111.162.181:9000/meituan/202401030025.png', '5.9', '24');
INSERT INTO `food` VALUES (40, 7, 39, '【小爱心礼盒】红艳草莓+智利车厘子 约350g', 'http://47.111.162.181:9000/meituan/2024010320026.png', '75.9', '3');
INSERT INTO `food` VALUES (41, 4, 7, '花魁柠檬红茶', 'http://47.111.162.181:9000/meituan/202401030031.png', '14', '21');
INSERT INTO `food` VALUES (42, 2, 23, '自选汉堡+自选小吃X2+自选饮品', 'http://47.111.162.181:9000/meituan/202401030033.png', '33.8', '100');
INSERT INTO `food` VALUES (43, 2, 24, '藤椒鸡腿中国汉堡+冰柠可乐', 'http://47.111.162.181:9000/meituan/202401030034.png', '22.8', '13');
INSERT INTO `food` VALUES (44, 2, 24, '香辣鸡腿中国汉堡+塔塔香鸡腿+冰柠可乐', 'http://47.111.162.181:9000/meituan/202401030035.png', '28.8', '21');
INSERT INTO `food` VALUES (45, 2, 25, '酸菜烤肉中国汉堡+塔塔鸡块+冰柠可乐', 'http://47.111.162.181:9000/meituan/202401030036.png', '37.9', '5');
INSERT INTO `food` VALUES (46, 8, 33, '卤腐竹', 'http://47.111.162.181:9000/meituan/202401030037.png', '5.2', '100');
INSERT INTO `food` VALUES (47, 8, 33, '微辣藕片', 'http://47.111.162.181:9000/meituan/202401030040.png', '5.8', '100');
INSERT INTO `food` VALUES (48, 8, 34, '黑鸭卤鸭翅中', 'http://47.111.162.181:9000/meituan/202401030038.png', '6.6', '71');
INSERT INTO `food` VALUES (49, 8, 34, '卤鸡爪', 'http://47.111.162.181:9000/meituan/202401030039.png', '4', '100');
INSERT INTO `food` VALUES (50, 8, 36, '可口可乐', 'http://47.111.162.181:9000/meituan/202401030041.png', '5', '4');
INSERT INTO `food` VALUES (51, 8, 35, '辣椒油', 'http://47.111.162.181:9000/meituan/202401030042.png', '0.7', '30');
INSERT INTO `food` VALUES (52, 7, 42, '红烧凤爪（微微辣）', 'http://47.111.162.181:9000/meituan/202401030043.png', '35', '28');
INSERT INTO `food` VALUES (53, 7, 41, '徽州炒饭（颗颗饱满，粒粒米香）', 'http://47.111.162.181:9000/meituan/202401030044.png', '25', '200');
INSERT INTO `food` VALUES (54, 9, 54, '【品类日小双拼】红心火龙果+芒果 约200g', 'http://47.111.162.181:9000/meituan/202401030103.png', '9.9', '31');
INSERT INTO `food` VALUES (55, 9, 54, '【品类日】丹东草莓', 'http://47.111.162.181:9000/meituan/202401030104.png', '17.9', '48');
INSERT INTO `food` VALUES (56, 9, 55, '【尝鲜】新鲜车厘子1颗装（10颗起购）', 'http://47.111.162.181:9000/meituan/202401030105.png', '0.01', '49');
INSERT INTO `food` VALUES (57, 9, 55, '【爆款】缤纷混合水果捞300g盒装 单点不送！', 'http://47.111.162.181:9000/meituan/202401030106.png', '0.01', '33');
INSERT INTO `food` VALUES (58, 9, 56, '【元旦快乐】砂糖橘礼盒5斤装', 'http://47.111.162.181:9000/meituan/202401030107.png', '58', '1');
INSERT INTO `food` VALUES (59, 9, 57, '【小双拼】西瓜+凤梨200g盒装', 'http://47.111.162.181:9000/meituan/202401030108.png', '8.8', '12');
INSERT INTO `food` VALUES (60, 9, 58, '【网红吃法】乌梅小番茄（150g盒装）', 'http://47.111.162.181:9000/meituan/202401030109.png', '9.9', '6');
INSERT INTO `food` VALUES (61, 10, 59, '【款式随机】2024龙年彩色窗花双面生肖静电贴', 'http://47.111.162.181:9000/meituan/202401030110.png', '0.01', '2');
INSERT INTO `food` VALUES (62, 10, 59, 'LED发光灯网红灯饰少女心礼物', 'http://47.111.162.181:9000/meituan/202401030111.png', '0.01', '6');
INSERT INTO `food` VALUES (63, 10, 60, '乐事 西班牙火腿薯片 咸鲜味104g', 'http://47.111.162.181:9000/meituan/202401030112.png', '12.5', '2');
INSERT INTO `food` VALUES (64, 10, 60, '乐事 美国经典原味大波浪薯片 70g/袋', 'http://47.111.162.181:9000/meituan/202401030113.png', '7.35', '4');
INSERT INTO `food` VALUES (65, 10, 61, '【款式随机】龙年灯笼diy儿童手工手提花灯', 'http://47.111.162.181:9000/meituan/202401030114.png', '13.9', '3');
INSERT INTO `food` VALUES (66, 10, 62, '简醇 酸奶 无蔗糖风味发酵乳100g/袋', 'http://47.111.162.181:9000/meituan/202401030115.png', '3.28', '40');
INSERT INTO `food` VALUES (67, 10, 63, '山姆超市 Members Mark', 'http://47.111.162.181:9000/meituan/202401030116.png', '4.9', '83');
INSERT INTO `food` VALUES (68, 10, 63, '山姆超市 Bouchard 布夏比利时进口巧克力', 'http://47.111.162.181:9000/meituan/202401030117.png', '1.47', '56');
INSERT INTO `food` VALUES (69, 10, 64, '全福德老北京网红冰糖葫芦70g/支', 'http://47.111.162.181:9000/meituan/202401030118.png', '9.9', '44');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int NOT NULL COMMENT '用户id',
  `food_id` int NOT NULL COMMENT '食物id',
  `store_id` int NOT NULL COMMENT '店铺id',
  `order_amount` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '订单金额',
  `status` varchar(255) CHARACTER SET utf8mb4   NOT NULL DEFAULT '0' COMMENT '订单状态',
  `code` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '订单编号',
  `order_time` datetime NOT NULL COMMENT '订单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4   ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (40, 1, 3, 2, '14.0', '0', '1704180769085', '2024-01-02 15:32:49');
INSERT INTO `orders` VALUES (41, 1, 4, 2, '18', '0', '1704180769085', '2024-01-02 15:32:49');
INSERT INTO `orders` VALUES (42, 1, 12, 2, '20.5', '0', '1704180769085', '2024-01-02 15:32:49');
INSERT INTO `orders` VALUES (44, 1, 11, 2, '42.9', '0', '1704181006447', '2024-01-02 15:36:46');
INSERT INTO `orders` VALUES (45, 1, 1, 4, '23.0', '0', '1704182358165', '2024-01-02 15:59:18');
INSERT INTO `orders` VALUES (46, 1, 2, 4, '10', '0', '1704182358165', '2024-01-02 15:59:18');
INSERT INTO `orders` VALUES (47, 1, 1, 4, '23.0', '0', '1704196735305', '2024-01-02 19:58:55');
INSERT INTO `orders` VALUES (48, 1, 2, 4, '10', '0', '1704196735305', '2024-01-02 19:58:55');
INSERT INTO `orders` VALUES (49, 1, 15, 7, '24.9', '0', '1704277868925', '2024-01-03 18:31:09');
INSERT INTO `orders` VALUES (50, 1, 16, 7, '29.9', '0', '1704277868925', '2024-01-03 18:31:09');
INSERT INTO `orders` VALUES (51, 1, 17, 7, '199', '0', '1704277868925', '2024-01-03 18:31:09');

-- ----------------------------
-- Table structure for stars
-- ----------------------------
DROP TABLE IF EXISTS `stars`;
CREATE TABLE `stars`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `user_id` int NOT NULL COMMENT '收藏的用户id',
  `store_id` int NOT NULL COMMENT '收藏的店铺id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4   ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stars
-- ----------------------------
INSERT INTO `stars` VALUES (31, 1, 2);
INSERT INTO `stars` VALUES (55, 1, 4);
INSERT INTO `stars` VALUES (57, 1, 6);
INSERT INTO `stars` VALUES (63, 1, 1);
INSERT INTO `stars` VALUES (65, 1, 3);

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `store_name` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '店铺名字',
  `image` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '店铺图片',
  `store_score` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL COMMENT '店铺评分',
  `month_sale` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL COMMENT '店铺月售',
  `people_avg` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL COMMENT '店铺人均',
  `minTakeOut_num` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL COMMENT '起送价格',
  `delivery_num` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL COMMENT '配送价格',
  `comment` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '店铺评论',
  `store_category` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL COMMENT '店铺类型',
  `summary` varchar(255) CHARACTER SET utf8mb4   NULL DEFAULT NULL COMMENT '店铺简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4   ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '瑞幸咖啡', 'http://47.111.162.181:9000/meituan/test.png', '4.7', '1000', '25', '20', '5', '难喝啊', '2', '【开票相关】请用订单手机号登录瑞幸咖啡小程序开具发票。\n');
INSERT INTO `store` VALUES (2, '塔斯汀·中国汉堡', 'http://47.111.162.181:9000/meituan/test1.png', '4.6', '2000', '25', '20', '0', '不愧是中国汉堡', '1', '塔斯汀x二手玫瑰限定新品[酸菜烤肉中国汉堡]酸爽上市，东北酸菜搭配\n焦香烤肉，开胃过瘾!还有香嫩解馋的啃定香鸡架，越嗦越有味。两款疯味\n新品，尽情开炫!');
INSERT INTO `store` VALUES (3, '小菜园新徽菜', 'http://47.111.162.181:9000/meituan/test2.png', '4.9', '1000', '33', '25', '4', '近期1000人下单', '1', '欢迎来到小菜园');
INSERT INTO `store` VALUES (4, '茶百道', 'http://47.111.162.181:9000/meituan/test3.png', '4.9', '1000', '14', '16', '9', '大众点评高分店铺', '2', '茶百道「现蒸芋头系列」升级回归，精选优质芋头，每日现蒸手捣...\n');
INSERT INTO `store` VALUES (6, '永辉超市', 'http://47.111.162.181:9000/meituan/20231231171447.png', '4.8', '500', '45', '25', '6', '很新鲜', '3', NULL);
INSERT INTO `store` VALUES (7, '鲜丰水果', 'http://47.111.162.181:9000/meituan/20231231171359.png', '4.7', '500', '25', '20', '5', '果子很好', '4', NULL);
INSERT INTO `store` VALUES (8, '卤智深卤味', 'http://47.111.162.181:9000/meituan/202401020001.png', '4.8', '500', '35', '25', '0', '喜欢的口味', '1', '感谢您对本店的支持和信任!我们坚持追求卓越的餐品质量，提供高\n品质、高效率的服务，让您吃得安全、吃得放心~');
INSERT INTO `store` VALUES (9, '切果now（临安店）', 'http://47.111.162.181:9000/meituan/202401030101.png', '4.3', '700', '38', '20', '3', '这么便宜，这么快！', '4', '欢迎光临全国领先的果切品牌切果NOW!成立6年来，\r\n我们在全国一百多个大中城市的近900家门店，一直秉承着“只用鲜果现切”的理念，用优质出品努力让吃到好水果变得更简单，已累计服务消费者近9000万人次。您有任何建议、团餐、加盟等事宜均可致电：4000137517。');
INSERT INTO `store` VALUES (10, '优购 · 精品超市', 'http://47.111.162.181:9000/meituan/202401030102.png', '4.8', '9999', '40', '19.9', '1', '包装仔细，日期新鲜', '3', '新店开张，本店24小时营业，优惠多多!欢迎您光临本店，如有不足之处，请您多多包涵并提出宝贵建议，我们将全力提供优质服务!');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `phone_number` varchar(11) CHARACTER SET utf8mb4   NOT NULL COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8mb4   NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4   ROW_FORMAT = Dynamic;

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
  `phone_number` varchar(11) CHARACTER SET utf8mb4   NOT NULL,
  `code` varchar(6) CHARACTER SET utf8mb4   NULL DEFAULT NULL,
  PRIMARY KEY (`phone_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4   ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_code
-- ----------------------------
INSERT INTO `user_code` VALUES ('11111111111', '');
INSERT INTO `user_code` VALUES ('12345678901', '');
INSERT INTO `user_code` VALUES ('13712345678', '');

SET FOREIGN_KEY_CHECKS = 1;
