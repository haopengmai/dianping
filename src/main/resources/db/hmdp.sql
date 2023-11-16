/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50622
 Source Host           : localhost:3306
 Source Schema         : hmdp

 Target Server Type    : MySQL
 Target Server Version : 50622
 File Encoding         : 65001

 Date: 14/03/2022 21:38:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog`;
CREATE TABLE `tb_blog`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` bigint(20) NOT NULL COMMENT '商户id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `images` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '探店的照片，最多9张，多张以\",\"隔开',
  `content` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '探店的文字描述',
  `liked` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '点赞数量',
  `comments` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '评论数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_blog
-- ----------------------------
INSERT INTO `tb_blog` VALUES (4, 4, 2, '无尽浪漫的夜晚丨在万花丛中摇晃着红酒杯🍷品战斧牛排🥩', '/imgs/blogs/7/14/4771fefb-1a87-4252-816c-9f7ec41ffa4a.jpg,/imgs/blogs/4/10/2f07e3c9-ddce-482d-9ea7-c21450f8d7cd.jpg,/imgs/blogs/2/6/b0756279-65da-4f2d-b62a-33f74b06454a.jpg,/imgs/blogs/10/7/7e97f47d-eb49-4dc9-a583-95faa7aed287.jpg,/imgs/blogs/1/2/4a7b496b-2a08-4af7-aa95-df2c3bd0ef97.jpg,/imgs/blogs/14/3/52b290eb-8b5d-403b-8373-ba0bb856d18e.jpg', '生活就是一半烟火·一半诗意<br/>手执烟火谋生活·心怀诗意以谋爱·<br/>当然<br/>\r\n男朋友给不了的浪漫要学会自己给🍒<br/>\n无法重来的一生·尽量快乐.<br/><br/>🏰「小筑里·神秘浪漫花园餐厅」🏰<br/><br/>\n💯这是一家最最最美花园的西餐厅·到处都是花餐桌上是花前台是花  美好无处不在\n品一口葡萄酒，维亚红酒马瑟兰·微醺上头工作的疲惫消失无际·生如此多娇🍃<br/><br/>📍地址:延安路200号(家乐福面)<br/><br/>🚌交通:地铁①号线定安路B口出右转过下通道右转就到啦～<br/><br/>--------------🥣菜品详情🥣---------------<br/><br/>「战斧牛排]<br/>\n超大一块战斧牛排经过火焰的炙烤发出阵阵香，外焦里嫩让人垂涎欲滴，切开牛排的那一刻，牛排的汁水顺势流了出来，分熟的牛排肉质软，简直细嫩到犯规，一刻都等不了要放入嘴里咀嚼～<br/><br/>「奶油培根意面」<br/>太太太好吃了💯<br/>我真的无法形容它的美妙，意面混合奶油香菇的香味真的太太太香了，我真的舔盘了，一丁点美味都不想浪费‼️<br/><br/><br/>「香菜汁烤鲈鱼」<br/>这个酱是辣的 真的绝好吃‼️<br/>鲈鱼本身就很嫩没什么刺，烤过之后外皮酥酥的，鱼肉蘸上酱料根本停不下来啊啊啊啊<br/>能吃辣椒的小伙伴一定要尝尝<br/><br/>非常可 好吃子🍽\n<br/>--------------🍃个人感受🍃---------------<br/><br/>【👩🏻‍🍳服务】<br/>小姐姐特别耐心的给我们介绍彩票 <br/>推荐特色菜品，拍照需要帮忙也是尽心尽力配合，太爱他们了<br/><br/>【🍃环境】<br/>比较有格调的西餐厅 整个餐厅的布局可称得上的万花丛生 有种在人间仙境的感觉🌸<br/>集美食美酒与鲜花为一体的风格店铺 令人向往<br/>烟火皆是生活 人间皆是浪漫<br/>', 1, 104, '2021-12-28 19:50:01', '2022-03-10 14:26:34');
INSERT INTO `tb_blog` VALUES (5, 1, 2, '人均30💰杭州这家港式茶餐厅我疯狂打call‼️', '/imgs/blogs/4/7/863cc302-d150-420d-a596-b16e9232a1a6.jpg,/imgs/blogs/11/12/8b37d208-9414-4e78-b065-9199647bb3e3.jpg,/imgs/blogs/4/1/fa74a6d6-3026-4cb7-b0b6-35abb1e52d11.jpg,/imgs/blogs/9/12/ac2ce2fb-0605-4f14-82cc-c962b8c86688.jpg,/imgs/blogs/4/0/26a7cd7e-6320-432c-a0b4-1b7418f45ec7.jpg,/imgs/blogs/15/9/cea51d9b-ac15-49f6-b9f1-9cf81e9b9c85.jpg', '又吃到一家好吃的茶餐厅🍴环境是怀旧tvb港风📺边吃边拍照片📷几十种菜品均价都在20+💰可以是很平价了！<br>·<br>店名：九记冰厅(远洋店)<br>地址：杭州市丽水路远洋乐堤港负一楼（溜冰场旁边）<br>·<br>✔️黯然销魂饭（38💰）<br>这碗饭我吹爆！米饭上盖满了甜甜的叉烧 还有两颗溏心蛋🍳每一粒米饭都裹着浓郁的酱汁 光盘了<br>·<br>✔️铜锣湾漏奶华（28💰）<br>黄油吐司烤的脆脆的 上面洒满了可可粉🍫一刀切开 奶盖流心像瀑布一样流出来  满足<br>·<br>✔️神仙一口西多士士（16💰）<br>简简单单却超级好吃！西多士烤的很脆 黄油味浓郁 面包体超级柔软 上面淋了炼乳<br>·<br>✔️怀旧五柳炸蛋饭（28💰）<br>四个鸡蛋炸成蓬松的炸蛋！也太好吃了吧！还有大块鸡排 上淋了酸甜的酱汁 太合我胃口了！！<br>·<br>✔️烧味双拼例牌（66💰）<br>选了烧鹅➕叉烧 他家烧腊品质真的惊艳到我！据说是每日广州发货 到店现烧现卖的黑棕鹅 每口都是正宗的味道！肉质很嫩 皮超级超级酥脆！一口爆油！叉烧肉也一点都不柴 甜甜的很入味 搭配梅子酱很解腻 ！<br>·<br>✔️红烧脆皮乳鸽（18.8💰）<br>乳鸽很大只 这个价格也太划算了吧， 肉质很有嚼劲 脆皮很酥 越吃越香～<br>·<br>✔️大满足小吃拼盘（25💰）<br>翅尖➕咖喱鱼蛋➕蝴蝶虾➕盐酥鸡<br>zui喜欢里面的咖喱鱼！咖喱酱香甜浓郁！鱼蛋很q弹～<br>·<br>✔️港式熊仔丝袜奶茶（19💰）<br>小熊🐻造型的奶茶冰也太可爱了！颜值担当 很地道的丝袜奶茶 茶味特别浓郁～<br>·', 1, 0, '2021-12-28 20:57:49', '2022-03-10 09:21:39');
INSERT INTO `tb_blog` VALUES (6, 10, 1, '杭州周末好去处｜💰50就可以骑马啦🐎', '/imgs/blogs/blog1.jpg', '杭州周末好去处｜💰50就可以骑马啦🐎', 1, 0, '2022-01-11 16:05:47', '2022-03-10 09:21:41');
INSERT INTO `tb_blog` VALUES (7, 10, 1, '杭州周末好去处｜💰50就可以骑马啦🐎', '/imgs/blogs/blog1.jpg', '杭州周末好去处｜💰50就可以骑马啦🐎', 1, 0, '2022-01-11 16:05:47', '2022-03-10 09:21:42');

-- ----------------------------
-- Table structure for tb_blog_comments
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_comments`;
CREATE TABLE `tb_blog_comments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `blog_id` bigint(20) UNSIGNED NOT NULL COMMENT '探店id',
  `parent_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的1级评论id，如果是一级评论，则值为0',
  `answer_id` bigint(20) UNSIGNED NOT NULL COMMENT '回复的评论id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '回复的内容',
  `liked` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '点赞数',
  `status` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '状态，0：正常，1：被举报，2：禁止查看',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_blog_comments
-- ----------------------------

-- ----------------------------
-- Table structure for tb_follow
-- ----------------------------
DROP TABLE IF EXISTS `tb_follow`;
CREATE TABLE `tb_follow`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `follow_user_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_follow
-- ----------------------------

-- ----------------------------
-- Table structure for tb_seckill_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tb_seckill_voucher`;
CREATE TABLE `tb_seckill_voucher`  (
  `voucher_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的优惠券的id',
  `stock` int(8) NOT NULL COMMENT '库存',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `begin_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '生效时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '失效时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`voucher_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '秒杀优惠券表，与优惠券是一对一关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_seckill_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for tb_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop`;
CREATE TABLE `tb_shop`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺名称',
  `type_id` bigint(20) UNSIGNED NOT NULL COMMENT '商铺类型的id',
  `images` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺图片，多个图片以\',\'隔开',
  `area` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商圈，例如陆家嘴',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地址',
  `x` double UNSIGNED NOT NULL COMMENT '经度',
  `y` double UNSIGNED NOT NULL COMMENT '维度',
  `avg_price` bigint(10) UNSIGNED NULL DEFAULT NULL COMMENT '均价，取整数',
  `sold` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '销量',
  `comments` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '评论数量',
  `score` int(2) UNSIGNED ZEROFILL NOT NULL COMMENT '评分，1~5分，乘10保存，避免小数',
  `open_hours` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '营业时间，例如 10:00-22:00',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `foreign_key_type`(`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_shop
-- ----------------------------
INSERT INTO `tb_shop` VALUES (1, '103茶餐厅', 1, 'https://qcloud.dpfile.com/pc/jiclIsCKmOI2arxKN1Uf0Hx3PucIJH8q0QSz-Z8llzcN56-_QiKuOvyio1OOxsRtFoXqu0G3iT2T27qat3WhLVEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vfCF2ubeXzk49OsGrXt_KYDCngOyCwZK-s3fqawWswzk.jpg,https://qcloud.dpfile.com/pc/IOf6VX3qaBgFXFVgp75w-KKJmWZjFc8GXDU8g9bQC6YGCpAmG00QbfT4vCCBj7njuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '大关', '金华路锦昌文华苑29号', 120.149192, 30.316078, 80, 0000004215, 0000003035, 37, '10:00-22:00', '2021-12-22 18:10:39', '2022-01-13 17:32:19');
INSERT INTO `tb_shop` VALUES (2, '蔡馬洪涛烤肉·老北京铜锅涮羊肉', 1, 'https://p0.meituan.net/bbia/c1870d570e73accbc9fee90b48faca41195272.jpg,http://p0.meituan.net/mogu/397e40c28fc87715b3d5435710a9f88d706914.jpg,https://qcloud.dpfile.com/pc/MZTdRDqCZdbPDUO0Hk6lZENRKzpKRF7kavrkEI99OxqBZTzPfIxa5E33gBfGouhFuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '拱宸桥/上塘', '上塘路1035号（中国工商银行旁）', 120.151505, 30.333422, 85, 0000002160, 0000001460, 46, '11:30-03:00', '2021-12-22 19:00:13', '2022-01-11 16:12:26');
INSERT INTO `tb_shop` VALUES (3, '新白鹿餐厅(运河上街店)', 1, 'https://p0.meituan.net/biztone/694233_1619500156517.jpeg,https://img.meituan.net/msmerchant/876ca8983f7395556eda9ceb064e6bc51840883.png,https://img.meituan.net/msmerchant/86a76ed53c28eff709a36099aefe28b51554088.png', '运河上街', '台州路2号运河上街购物中心F5', 120.151954, 30.32497, 61, 0000012035, 0000008045, 47, '10:30-21:00', '2021-12-22 19:10:05', '2022-01-11 16:12:42');
INSERT INTO `tb_shop` VALUES (4, 'Mamala(杭州远洋乐堤港店)', 1, 'https://img.meituan.net/msmerchant/232f8fdf09050838bd33fb24e79f30f9606056.jpg,https://qcloud.dpfile.com/pc/rDe48Xe15nQOHCcEEkmKUp5wEKWbimt-HDeqYRWsYJseXNncvMiXbuED7x1tXqN4uzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '拱宸桥/上塘', '丽水路66号远洋乐堤港商城2期1层B115号', 120.146659, 30.312742, 290, 0000013519, 0000009529, 49, '11:00-22:00', '2021-12-22 19:17:15', '2022-01-11 16:12:51');
INSERT INTO `tb_shop` VALUES (5, '海底捞火锅(水晶城购物中心店）', 1, 'https://img.meituan.net/msmerchant/054b5de0ba0b50c18a620cc37482129a45739.jpg,https://img.meituan.net/msmerchant/59b7eff9b60908d52bd4aea9ff356e6d145920.jpg,https://qcloud.dpfile.com/pc/Qe2PTEuvtJ5skpUXKKoW9OQ20qc7nIpHYEqJGBStJx0mpoyeBPQOJE4vOdYZwm9AuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '大关', '上塘路458号水晶城购物中心F6', 120.15778, 30.310633, 104, 0000004125, 0000002764, 49, '10:00-07:00', '2021-12-22 19:20:58', '2022-01-11 16:13:01');
INSERT INTO `tb_shop` VALUES (6, '幸福里老北京涮锅（丝联店）', 1, 'https://img.meituan.net/msmerchant/e71a2d0d693b3033c15522c43e03f09198239.jpg,https://img.meituan.net/msmerchant/9f8a966d60ffba00daf35458522273ca658239.jpg,https://img.meituan.net/msmerchant/ef9ca5ef6c05d381946fe4a9aa7d9808554502.jpg', '拱宸桥/上塘', '金华南路189号丝联166号', 120.148603, 30.318618, 130, 0000009531, 0000007324, 46, '11:00-13:50,17:00-20:50', '2021-12-22 19:24:53', '2022-01-11 16:13:09');
INSERT INTO `tb_shop` VALUES (7, '炉鱼(拱墅万达广场店)', 1, 'https://img.meituan.net/msmerchant/909434939a49b36f340523232924402166854.jpg,https://img.meituan.net/msmerchant/32fd2425f12e27db0160e837461c10303700032.jpg,https://img.meituan.net/msmerchant/f7022258ccb8dabef62a0514d3129562871160.jpg', '北部新城', '杭行路666号万达商业中心4幢2单元409室(铺位号4005)', 120.124691, 30.336819, 85, 0000002631, 0000001320, 47, '00:00-24:00', '2021-12-22 19:40:52', '2022-01-11 16:13:19');
INSERT INTO `tb_shop` VALUES (8, '浅草屋寿司（运河上街店）', 1, 'https://img.meituan.net/msmerchant/cf3dff697bf7f6e11f4b79c4e7d989e4591290.jpg,https://img.meituan.net/msmerchant/0b463f545355c8d8f021eb2987dcd0c8567811.jpg,https://img.meituan.net/msmerchant/c3c2516939efaf36c4ccc64b0e629fad587907.jpg', '运河上街', '拱墅区金华路80号运河上街B1', 120.150526, 30.325231, 88, 0000002406, 0000001206, 46, ' 11:00-21:30', '2021-12-22 19:51:06', '2022-01-11 16:13:25');
INSERT INTO `tb_shop` VALUES (9, '羊老三羊蝎子牛仔排北派炭火锅(运河上街店)', 1, 'https://p0.meituan.net/biztone/163160492_1624251899456.jpeg,https://img.meituan.net/msmerchant/e478eb16f7e31a7f8b29b5e3bab6de205500837.jpg,https://img.meituan.net/msmerchant/6173eb1d18b9d70ace7fdb3f2dd939662884857.jpg', '运河上街', '台州路2号运河上街购物中心F5', 120.150598, 30.325251, 101, 0000002763, 0000001363, 44, '11:00-21:30', '2021-12-22 19:53:59', '2022-01-11 16:13:34');
INSERT INTO `tb_shop` VALUES (10, '开乐迪KTV（运河上街店）', 2, 'https://p0.meituan.net/joymerchant/a575fd4adb0b9099c5c410058148b307-674435191.jpg,https://p0.meituan.net/merchantpic/68f11bf850e25e437c5f67decfd694ab2541634.jpg,https://p0.meituan.net/dpdeal/cb3a12225860ba2875e4ea26c6d14fcc197016.jpg', '运河上街', '台州路2号运河上街购物中心F4', 120.149093, 30.324666, 67, 0000026891, 0000000902, 37, '00:00-24:00', '2021-12-22 20:25:16', '2021-12-22 20:25:16');
INSERT INTO `tb_shop` VALUES (11, 'INLOVE KTV(水晶城店)', 2, 'https://p0.meituan.net/dpmerchantpic/53e74b200211d68988a4f02ae9912c6c1076826.jpg,https://qcloud.dpfile.com/pc/4iWtIvzLzwM2MGgyPu1PCDb4SWEaKqUeHm--YAt1EwR5tn8kypBcqNwHnjg96EvT_Gd2X_f-v9T8Yj4uLt25Gg.jpg,https://qcloud.dpfile.com/pc/WZsJWRI447x1VG2x48Ujgu7vwqksi_9WitdKI4j3jvIgX4MZOpGNaFtM93oSSizbGybIjx5eX6WNgCPvcASYAw.jpg', '水晶城', '上塘路458号水晶城购物中心6层', 120.15853, 30.310002, 75, 0000035977, 0000005684, 47, '11:30-06:00', '2021-12-22 20:29:02', '2021-12-22 20:39:00');
INSERT INTO `tb_shop` VALUES (12, '魅(杭州远洋乐堤港店)', 2, 'https://p0.meituan.net/dpmerchantpic/63833f6ba0393e2e8722420ef33f3d40466664.jpg,https://p0.meituan.net/dpmerchantpic/ae3c94cc92c529c4b1d7f68cebed33fa105810.png,', '远洋乐堤港', '丽水路58号远洋乐堤港F4', 120.14983, 30.31211, 88, 0000006444, 0000000235, 46, '10:00-02:00', '2021-12-22 20:34:34', '2021-12-22 20:34:34');
INSERT INTO `tb_shop` VALUES (13, '讴K拉量贩KTV(北城天地店)', 2, 'https://p1.meituan.net/merchantpic/598c83a8c0d06fe79ca01056e214d345875600.jpg,https://qcloud.dpfile.com/pc/HhvI0YyocYHRfGwJWqPQr34hRGRl4cWdvlNwn3dqghvi4WXlM2FY1te0-7pE3Wb9_Gd2X_f-v9T8Yj4uLt25Gg.jpg,https://qcloud.dpfile.com/pc/F5ZVzZaXFE27kvQzPnaL4V8O9QCpVw2nkzGrxZE8BqXgkfyTpNExfNG5CEPQX4pjGybIjx5eX6WNgCPvcASYAw.jpg', 'D32天阳购物中心', '湖州街567号北城天地5层', 120.130453, 30.327655, 58, 0000018997, 0000001857, 41, '12:00-02:00', '2021-12-22 20:38:54', '2021-12-22 20:40:04');
INSERT INTO `tb_shop` VALUES (14, '星聚会KTV(拱墅区万达店)', 2, 'https://p0.meituan.net/dpmerchantpic/f4cd6d8d4eb1959c3ea826aa05a552c01840451.jpg,https://p0.meituan.net/dpmerchantpic/2efc07aed856a8ab0fc75c86f4b9b0061655777.jpg,https://qcloud.dpfile.com/pc/zWfzzIorCohKT0bFwsfAlHuayWjI6DBEMPHHncmz36EEMU9f48PuD9VxLLDAjdoU_Gd2X_f-v9T8Yj4uLt25Gg.jpg', '北部新城', '杭行路666号万达广场C座1-2F', 120.128958, 30.337252, 60, 0000017771, 0000000685, 47, '10:00-22:00', '2021-12-22 20:48:54', '2021-12-22 20:48:54');

-- ----------------------------
-- Table structure for tb_shop_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_type`;
CREATE TABLE `tb_shop_type`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `sort` int(3) UNSIGNED NULL DEFAULT NULL COMMENT '顺序',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_shop_type
-- ----------------------------
INSERT INTO `tb_shop_type` VALUES (1, '美食', '/types/ms.png', 1, '2021-12-22 20:17:47', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (2, 'KTV', '/types/KTV.png', 2, '2021-12-22 20:18:27', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (3, '丽人·美发', '/types/lrmf.png', 3, '2021-12-22 20:18:48', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (4, '健身运动', '/types/jsyd.png', 10, '2021-12-22 20:19:04', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (5, '按摩·足疗', '/types/amzl.png', 5, '2021-12-22 20:19:27', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (6, '美容SPA', '/types/spa.png', 6, '2021-12-22 20:19:35', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (7, '亲子游乐', '/types/qzyl.png', 7, '2021-12-22 20:19:53', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (8, '酒吧', '/types/jiuba.png', 8, '2021-12-22 20:20:02', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (9, '轰趴馆', '/types/hpg.png', 9, '2021-12-22 20:20:08', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (10, '美睫·美甲', '/types/mjmj.png', 4, '2021-12-22 20:21:46', '2021-12-23 11:24:31');

-- ----------------------------
-- Table structure for tb_sign
-- ----------------------------
DROP TABLE IF EXISTS `tb_sign`;
CREATE TABLE `tb_sign`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `year` year NOT NULL COMMENT '签到的年',
  `month` tinyint(2) NOT NULL COMMENT '签到的月',
  `date` date NOT NULL COMMENT '签到的日期',
  `is_backup` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否补签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sign
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号码',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码，加密存储',
  `nick_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '昵称，默认是用户id',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '人物头像',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniqe_key_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1010 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '13686869696', '', '小鱼同学', '/imgs/blogs/blog1.jpg', '2021-12-24 10:27:19', '2022-01-11 16:04:00');
INSERT INTO `tb_user` VALUES (2, '13838411438', '', '可可今天不吃肉', '/imgs/icons/kkjtbcr.jpg', '2021-12-24 15:14:39', '2021-12-28 19:58:04');
INSERT INTO `tb_user` VALUES (4, '13456789011', '', 'user_slxaxy2au9f3tanffaxr', '', '2022-01-07 12:07:53', '2022-01-07 12:07:53');
INSERT INTO `tb_user` VALUES (5, '13456789001', '', '可爱多', '/imgs/icons/user5-icon.png', '2022-01-07 16:11:33', '2022-03-11 09:09:20');
INSERT INTO `tb_user` VALUES (6, '13456762069', '', 'user_xn5wr3hpsv', '', '2022-02-07 17:54:10', '2022-02-07 17:54:10');
INSERT INTO `tb_user` VALUES (10, '13688668889', '', 'user_88arndojw9', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (11, '13688668890', '', 'user_qcfr2k1lmi', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (12, '13688668891', '', 'user_ffsk4hli07', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (13, '13688668892', '', 'user_r62q62ijef', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (14, '13688668893', '', 'user_f3rymyt1q5', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (15, '13688668894', '', 'user_hnyhc3mjat', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (16, '13688668895', '', 'user_2spo35f5rl', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (17, '13688668896', '', 'user_q3r70baqe1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (18, '13688668897', '', 'user_v73ottjqxt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (19, '13688668898', '', 'user_tmh8o4r11q', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (20, '13688668899', '', 'user_4epgb7b5u1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (21, '13688668900', '', 'user_g474zoujxj', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (22, '13688668901', '', 'user_r3kh1g6aah', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (23, '13688668902', '', 'user_u3uuo7l5fo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (24, '13688668903', '', 'user_9o93lbsojt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (25, '13688668904', '', 'user_jbhmr43wpq', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (26, '13688668905', '', 'user_nevyd3c5ux', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (27, '13688668906', '', 'user_oow4frmjp3', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (28, '13688668907', '', 'user_cvmknmec74', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (29, '13688668908', '', 'user_0t2x5njbz7', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (30, '13688668909', '', 'user_y5x09783hp', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (31, '13688668910', '', 'user_owe4eyuhhh', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (32, '13688668911', '', 'user_j76auh0ggg', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (33, '13688668912', '', 'user_aal5w9rm33', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (34, '13688668913', '', 'user_a2pgu8cr21', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (35, '13688668914', '', 'user_nle60p846v', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (36, '13688668915', '', 'user_w1mck7c7yv', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (37, '13688668916', '', 'user_bnpiybumlk', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (38, '13688668917', '', 'user_4w7xeo2yyt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (39, '13688668918', '', 'user_99u4voj7xl', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (40, '13688668919', '', 'user_g03is27pd6', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (41, '13688668920', '', 'user_3j9erfkl0p', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (42, '13688668921', '', 'user_l7rs56ah9y', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (43, '13688668922', '', 'user_p3655ctliy', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (44, '13688668923', '', 'user_qi1qze1yp1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (45, '13688668924', '', 'user_vrd5ir0rj0', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (46, '13688668925', '', 'user_tubboh1byc', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (47, '13688668926', '', 'user_j2bdj3d2eo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (48, '13688668927', '', 'user_ncj7r0vu1h', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (49, '13688668928', '', 'user_63rhqjqa0a', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (50, '13688668929', '', 'user_80ue5cywnk', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (51, '13688668930', '', 'user_j4q037vhpi', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (52, '13688668931', '', 'user_ms0uat5bf0', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (53, '13688668932', '', 'user_oqep16bdel', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (54, '13688668933', '', 'user_vjtvjjdqh7', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (55, '13688668934', '', 'user_0168i9hv5g', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (56, '13688668935', '', 'user_vh1j6zw1q4', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (57, '13688668936', '', 'user_rkf2nxouof', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (58, '13688668937', '', 'user_whlt2chtv3', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (59, '13688668938', '', 'user_lpqr90wbeo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (60, '13688668939', '', 'user_h40y3ipk9k', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (61, '13688668940', '', 'user_awdqkmbkt7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (62, '13688668941', '', 'user_1xgbg9v4r5', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (63, '13688668942', '', 'user_7vf5fgiu68', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (64, '13688668943', '', 'user_lsgiz015vf', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (65, '13688668944', '', 'user_0nqjvanruk', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (66, '13688668945', '', 'user_8alg1taath', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (67, '13688668946', '', 'user_q45ykjgpxe', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (68, '13688668947', '', 'user_4hy0o6ir0r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (69, '13688668948', '', 'user_q6rh7e6zo9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (70, '13688668949', '', 'user_1wp3ygfyn2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (71, '13688668950', '', 'user_13vjvo6flp', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (72, '13688668951', '', 'user_glyshbbwin', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (73, '13688668952', '', 'user_3ewzgsnhzj', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (74, '13688668953', '', 'user_ky481zf1fs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (75, '13688668954', '', 'user_o5yzu0epev', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (76, '13688668955', '', 'user_ycbracmsi3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (77, '13688668956', '', 'user_974wwi1283', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (78, '13688668957', '', 'user_1y0xokmk9w', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (79, '13688668958', '', 'user_nd74cho3tu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (80, '13688668959', '', 'user_5z7u2eysa4', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (81, '13688668960', '', 'user_yvf8hfu5yy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (82, '13688668961', '', 'user_2poi4wvpms', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (83, '13688668962', '', 'user_v4ysxjt1yu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (84, '13688668963', '', 'user_kbvn4gpgk6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (85, '13688668964', '', 'user_23niik1tyg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (86, '13688668965', '', 'user_uf2zz6ispe', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (87, '13688668966', '', 'user_5k19vf7c4o', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (88, '13688668967', '', 'user_5ahdd98xbr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (89, '13688668968', '', 'user_a5cnfnoopx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (90, '13688668969', '', 'user_utnmcyfg13', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (91, '13688668970', '', 'user_0k6n8ikb95', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (92, '13688668971', '', 'user_zqk5maqtmi', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (93, '13688668972', '', 'user_9i9suwd3nd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (94, '13688668973', '', 'user_u0y0ngrdjo', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (95, '13688668974', '', 'user_stvijjwvzu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (96, '13688668975', '', 'user_7if7tttays', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (97, '13688668976', '', 'user_f9hmz0ngdu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (98, '13688668977', '', 'user_wuhs2nq9d0', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (99, '13688668978', '', 'user_1u3rlntd5s', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (100, '13688668979', '', 'user_ywe62vhu7u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (101, '13688668980', '', 'user_rbfpzdt6tg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (102, '13688668981', '', 'user_jv69l0d1kg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (103, '13688668982', '', 'user_dg6hwl48r6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (104, '13688668983', '', 'user_8rwl92pixr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (105, '13688668984', '', 'user_k5dek2os3m', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (106, '13688668985', '', 'user_kw1nr2scyz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (107, '13688668986', '', 'user_h81c5g0t7s', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (108, '13688668987', '', 'user_jar6djas5e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (109, '13688668988', '', 'user_f9x2qm4grh', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (110, '13688668989', '', 'user_mg5h6c4bcu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (111, '13688668990', '', 'user_hcg7ocbnus', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (112, '13688668991', '', 'user_rsbxx7g2yz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (113, '13688668992', '', 'user_bi3fhutbd1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (114, '13688668993', '', 'user_o4pjkkyu3q', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (115, '13688668994', '', 'user_7zfs7g5vqb', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (116, '13688668995', '', 'user_oq71inq541', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (117, '13688668996', '', 'user_u9zoiadq6l', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (118, '13688668997', '', 'user_4elguvu5pz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (119, '13688668998', '', 'user_90dclmdv94', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (120, '13688668999', '', 'user_v2of3k1liq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (121, '13688669000', '', 'user_bg04b99iqn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (122, '13688669001', '', 'user_6fo9sul3q6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (123, '13688669002', '', 'user_vl7ajjlhnn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (124, '13688669003', '', 'user_df3kaj5zi1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (125, '13688669004', '', 'user_yo6iohe5s2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (126, '13688669005', '', 'user_2iss3wrcm1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (127, '13688669006', '', 'user_7y8qm8sv4r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (128, '13688669007', '', 'user_f825rhknpq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (129, '13688669008', '', 'user_3bigm0aauz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (130, '13688669009', '', 'user_ib9eo5dtgk', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (131, '13688669010', '', 'user_ci5hhnufj9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (132, '13688669011', '', 'user_cc56u62rny', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (133, '13688669012', '', 'user_i8fg7azvnt', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (134, '13688669013', '', 'user_bw5dqkv6d9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (135, '13688669014', '', 'user_1n1o9ri5oz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (136, '13688669015', '', 'user_1b0zexoldy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (137, '13688669016', '', 'user_lz9dr6wxkw', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (138, '13688669017', '', 'user_zfpfscu53e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (139, '13688669018', '', 'user_5kldn59nn9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (140, '13688669019', '', 'user_p0mjswjh9x', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (141, '13688669020', '', 'user_z4jcqggm11', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (142, '13688669021', '', 'user_pv9yctbxza', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (143, '13688669022', '', 'user_u702tikvol', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (144, '13688669023', '', 'user_sy4a5f3qmy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (145, '13688669024', '', 'user_n6g293r60l', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (146, '13688669025', '', 'user_uylyp6ttqz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (147, '13688669026', '', 'user_h2zmzefha3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (148, '13688669027', '', 'user_5outop6hz2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (149, '13688669028', '', 'user_vp8l74sadq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (150, '13688669029', '', 'user_n9ww3of8fg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (151, '13688669030', '', 'user_rfm7pfgkv8', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (152, '13688669031', '', 'user_h7298xuo0u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (153, '13688669032', '', 'user_72s0smb2wz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (154, '13688669033', '', 'user_twhphih9nd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (155, '13688669034', '', 'user_vfocakn5gl', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (156, '13688669035', '', 'user_tfwe1v2x82', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (157, '13688669036', '', 'user_eyrq375qgg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (158, '13688669037', '', 'user_rg2obilrot', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (159, '13688669038', '', 'user_rzfwln2aw2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (160, '13688669039', '', 'user_rzfgzeshe1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (161, '13688669040', '', 'user_c67s0sjbmv', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (162, '13688669041', '', 'user_fkyp652kkn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (163, '13688669042', '', 'user_sv1i552okx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (164, '13688669043', '', 'user_fsrmh6e0d3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (165, '13688669044', '', 'user_jey7gkjesn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (166, '13688669045', '', 'user_00xdq55r0f', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (167, '13688669046', '', 'user_wkb6tveg4e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (168, '13688669047', '', 'user_51ong6aunx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (169, '13688669048', '', 'user_ke4h0uxthm', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (170, '13688669049', '', 'user_oswyb9opx5', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (171, '13688669050', '', 'user_iy8itbwg6q', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (172, '13688669051', '', 'user_g1mk023p9r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (173, '13688669052', '', 'user_2507p7kvzs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (174, '13688669053', '', 'user_piixbanfxl', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (175, '13688669054', '', 'user_w2d2is43jc', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (176, '13688669055', '', 'user_lrk4it56lt', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (177, '13688669056', '', 'user_3273q3j2ft', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (178, '13688669057', '', 'user_ltf42q0vy4', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (179, '13688669058', '', 'user_7npp13snqp', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (180, '13688669059', '', 'user_slxftqmjp9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (181, '13688669060', '', 'user_il4dsuvdfr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (182, '13688669061', '', 'user_esm2d4uh7a', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (183, '13688669062', '', 'user_te4prs2y3j', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (184, '13688669063', '', 'user_dycwcufgj0', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (185, '13688669064', '', 'user_jjo4dvsgag', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (186, '13688669065', '', 'user_9opl0t1sd2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (187, '13688669066', '', 'user_hbm1dnssq6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (188, '13688669067', '', 'user_tx88zar5cs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (189, '13688669068', '', 'user_1p206nyupm', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (190, '13688669069', '', 'user_8lnbd2ao5u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (191, '13688669070', '', 'user_v4uwls1wg7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (192, '13688669071', '', 'user_z1bkh9lnjj', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (193, '13688669072', '', 'user_r7u852ex1n', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (194, '13688669073', '', 'user_yqr54gdh8t', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (195, '13688669074', '', 'user_x4kngjjng7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (196, '13688669075', '', 'user_xvtxjocno2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (197, '13688669076', '', 'user_1zj77q03tf', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (198, '13688669077', '', 'user_0q8yjtlp7a', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (199, '13688669078', '', 'user_nt2ogdyl73', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (200, '13688669079', '', 'user_6w0ex6afsz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (201, '13688669080', '', 'user_qpm2vyflc3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (202, '13688669081', '', 'user_dzvf9xujj1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (203, '13688669082', '', 'user_aiypeaeupd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (204, '13688669083', '', 'user_5iznj0t5hg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (205, '13688669084', '', 'user_4t1flvqz2h', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (206, '13688669085', '', 'user_542t36rd41', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (207, '13688669086', '', 'user_kmhowbydu6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (208, '13688669087', '', 'user_e8nz64jbym', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (209, '13688669088', '', 'user_zjbr3zq6we', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (210, '13688669089', '', 'user_ptk6qaspna', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (211, '13688669090', '', 'user_jei7tqtu1j', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (212, '13688669091', '', 'user_8x7cyv5ey8', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (213, '13688669092', '', 'user_mx3l4tj2jq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (214, '13688669093', '', 'user_ba6e9l6exg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (215, '13688669094', '', 'user_vlku3rop6e', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (216, '13688669095', '', 'user_hsff9net6q', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (217, '13688669096', '', 'user_mbaficnzfe', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (218, '13688669097', '', 'user_b3wglh40dk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (219, '13688669098', '', 'user_dvi1yllk48', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (220, '13688669099', '', 'user_cxv8smu642', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (221, '13688669100', '', 'user_ze5exti1z5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (222, '13688669101', '', 'user_b6524nuosz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (223, '13688669102', '', 'user_jw3xmz31ss', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (224, '13688669103', '', 'user_3fqrglyqj0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (225, '13688669104', '', 'user_uf9dy1kfmg', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (226, '13688669105', '', 'user_nn4ss4oupv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (227, '13688669106', '', 'user_khse5vlch8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (228, '13688669107', '', 'user_xfpqrk3hea', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (229, '13688669108', '', 'user_0sfyf9o74l', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (230, '13688669109', '', 'user_936vlojcwy', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (231, '13688669110', '', 'user_wq9m8aqmay', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (232, '13688669111', '', 'user_uqw0c5ilp5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (233, '13688669112', '', 'user_qjucgt4ar1', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (234, '13688669113', '', 'user_sry5bqf8ev', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (235, '13688669114', '', 'user_9csdwveeh8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (236, '13688669115', '', 'user_y9kl1yd7fk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (237, '13688669116', '', 'user_mahwf66irm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (238, '13688669117', '', 'user_tud2i4itlr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (239, '13688669118', '', 'user_p1s640kfny', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (240, '13688669119', '', 'user_2tyzfj49r6', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (241, '13688669120', '', 'user_wjswilvpou', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (242, '13688669121', '', 'user_yuushg7x44', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (243, '13688669122', '', 'user_pb0fas6tob', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (244, '13688669123', '', 'user_3k4nn4dhuh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (245, '13688669124', '', 'user_lljtt3ttml', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (246, '13688669125', '', 'user_weftqlsasg', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (247, '13688669126', '', 'user_1lo78exvpl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (248, '13688669127', '', 'user_qzbukb32cm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (249, '13688669128', '', 'user_k80i5kfvoj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (250, '13688669129', '', 'user_ggx53ve2zp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (251, '13688669130', '', 'user_yz0fmlzjxv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (252, '13688669131', '', 'user_jh6epyjgiw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (253, '13688669132', '', 'user_0k0ly383fy', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (254, '13688669133', '', 'user_ibc8pgs2jc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (255, '13688669134', '', 'user_ys8yxdm6cr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (256, '13688669135', '', 'user_7zdagyyymi', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (257, '13688669136', '', 'user_9q7fiiqwzm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (258, '13688669137', '', 'user_64qzvesiku', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (259, '13688669138', '', 'user_5fi8fsc9e5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (260, '13688669139', '', 'user_1wo4aktp89', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (261, '13688669140', '', 'user_5mis2rucuh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (262, '13688669141', '', 'user_pghkcw4cog', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (263, '13688669142', '', 'user_ymh7a5t69k', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (264, '13688669143', '', 'user_58qypl26r3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (265, '13688669144', '', 'user_oknszihfil', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (266, '13688669145', '', 'user_rx5qu0277b', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (267, '13688669146', '', 'user_4mwekx3q8z', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (268, '13688669147', '', 'user_ie9qzfwu27', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (269, '13688669148', '', 'user_l80r6phxur', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (270, '13688669149', '', 'user_np6iqqeuql', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (271, '13688669150', '', 'user_5c27qgw2o3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (272, '13688669151', '', 'user_ujpa6juatc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (273, '13688669152', '', 'user_van4fds7cx', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (274, '13688669153', '', 'user_ox11o9krp9', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (275, '13688669154', '', 'user_c7o3u0usf2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (276, '13688669155', '', 'user_cq7hojlerq', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (277, '13688669156', '', 'user_kphis0ntao', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (278, '13688669157', '', 'user_nd12v2tdpj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (279, '13688669158', '', 'user_5far04rjm0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (280, '13688669159', '', 'user_f33abomjs2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (281, '13688669160', '', 'user_1qty1oyawt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (282, '13688669161', '', 'user_9l463o7me2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (283, '13688669162', '', 'user_0seyfs8ou8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (284, '13688669163', '', 'user_7uhqt2zf11', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (285, '13688669164', '', 'user_wy2jtbkr1t', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (286, '13688669165', '', 'user_yjf1kbl6r8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (287, '13688669166', '', 'user_r98pel35gn', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (288, '13688669167', '', 'user_u2eg1jcwvz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (289, '13688669168', '', 'user_5z7d4fr9ye', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (290, '13688669169', '', 'user_kl0p0ku6zv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (291, '13688669170', '', 'user_dsdocfa64r', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (292, '13688669171', '', 'user_gbygsd03kc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (293, '13688669172', '', 'user_dj1xqos2is', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (294, '13688669173', '', 'user_il6yctz040', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (295, '13688669174', '', 'user_y4zn043gvj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (296, '13688669175', '', 'user_oh9tjoxq8c', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (297, '13688669176', '', 'user_6xlq088asi', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (298, '13688669177', '', 'user_0sepghh66s', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (299, '13688669178', '', 'user_dzo7q333x7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (300, '13688669179', '', 'user_n7j3j68agt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (301, '13688669180', '', 'user_b99vc3qr3d', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (302, '13688669181', '', 'user_o2uu01ngfw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (303, '13688669182', '', 'user_q0yy8pvku3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (304, '13688669183', '', 'user_lipi4iyiv9', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (305, '13688669184', '', 'user_x2dq9i90ms', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (306, '13688669185', '', 'user_bz9twrcx01', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (307, '13688669186', '', 'user_iun0ocev18', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (308, '13688669187', '', 'user_uob3pxr062', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (309, '13688669188', '', 'user_nxuwi8q3n5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (310, '13688669189', '', 'user_g6si4hwe4r', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (311, '13688669190', '', 'user_v4xud6pxnh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (312, '13688669191', '', 'user_n3vq5a4c49', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (313, '13688669192', '', 'user_6qdfn8dkja', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (314, '13688669193', '', 'user_872mdw0ibu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (315, '13688669194', '', 'user_s426pmlnno', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (316, '13688669195', '', 'user_n7d3fcnlqf', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (317, '13688669196', '', 'user_d1euhpgvjt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (318, '13688669197', '', 'user_luwqlqye4n', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (319, '13688669198', '', 'user_m9khstqle0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (320, '13688669199', '', 'user_7u54hoeh5p', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (321, '13688669200', '', 'user_hndxi8iyg7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (322, '13688669201', '', 'user_csagq8b16v', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (323, '13688669202', '', 'user_sa979r5vfr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (324, '13688669203', '', 'user_gojbeoieko', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (325, '13688669204', '', 'user_vrxmccmk36', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (326, '13688669205', '', 'user_kwzzzxile8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (327, '13688669206', '', 'user_8ik6wmzcs3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (328, '13688669207', '', 'user_x9f4po6eok', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (329, '13688669208', '', 'user_vn0g3rywt0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (330, '13688669209', '', 'user_0h0hqnoqvv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (331, '13688669210', '', 'user_ne3rvn4cim', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (332, '13688669211', '', 'user_bz20tomja0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (333, '13688669212', '', 'user_7k5d8324tm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (334, '13688669213', '', 'user_5va74it1op', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (335, '13688669214', '', 'user_gc21xkfgph', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (336, '13688669215', '', 'user_rv1o0ousua', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (337, '13688669216', '', 'user_lkp3hk0t8q', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (338, '13688669217', '', 'user_e2kjjqo7ee', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (339, '13688669218', '', 'user_ja24gfl42z', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (340, '13688669219', '', 'user_5sxrarxxd2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (341, '13688669220', '', 'user_lzilfx23jr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (342, '13688669221', '', 'user_4healeh2sq', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (343, '13688669222', '', 'user_txh60qz6xe', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (344, '13688669223', '', 'user_ofie8fobtu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (345, '13688669224', '', 'user_wxfngmqndc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (346, '13688669225', '', 'user_n11kdqn95y', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (347, '13688669226', '', 'user_7b9etto6jl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (348, '13688669227', '', 'user_sa23n9pacw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (349, '13688669228', '', 'user_1lhe46upfz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (350, '13688669229', '', 'user_jioft4gdiu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (351, '13688669230', '', 'user_jta7ld4vty', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (352, '13688669231', '', 'user_5tkaejhk7g', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (353, '13688669232', '', 'user_fkoe771g9p', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (354, '13688669233', '', 'user_snv802ujrx', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (355, '13688669234', '', 'user_4szkwdl3hw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (356, '13688669235', '', 'user_qq4cteo33l', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (357, '13688669236', '', 'user_hwn4ofw0dp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (358, '13688669237', '', 'user_2r4xhcvxp2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (359, '13688669238', '', 'user_iphgurk3nk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (360, '13688669239', '', 'user_ih9kbl5kzb', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (361, '13688669240', '', 'user_2odlf3rqex', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (362, '13688669241', '', 'user_i9jalo3ouw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (363, '13688669242', '', 'user_whbqd8vhr2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (364, '13688669243', '', 'user_bzlvvy10mp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (365, '13688669244', '', 'user_pe7y2zyii7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (366, '13688669245', '', 'user_cnk071ghc7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (367, '13688669246', '', 'user_21cue7tpm0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (368, '13688669247', '', 'user_nidneujm1x', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (369, '13688669248', '', 'user_tx2y3v0pb0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (370, '13688669249', '', 'user_i8ikz0nufr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (371, '13688669250', '', 'user_omq8bsw2ij', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (372, '13688669251', '', 'user_ffpuo977gj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (373, '13688669252', '', 'user_jcgx7mukv0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (374, '13688669253', '', 'user_gn6k43jfx8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (375, '13688669254', '', 'user_esfv726lun', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (376, '13688669255', '', 'user_l7vh3qyhnk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (377, '13688669256', '', 'user_aqo9nsp13v', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (378, '13688669257', '', 'user_45z1cjwo34', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (379, '13688669258', '', 'user_cukuugiquc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (380, '13688669259', '', 'user_cmzben5ql1', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (381, '13688669260', '', 'user_fm136hckhd', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (382, '13688669261', '', 'user_4neww35d6t', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (383, '13688669262', '', 'user_p4e2t04dl0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (384, '13688669263', '', 'user_3s22mzjlgl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (385, '13688669264', '', 'user_kf0pbo00lp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (386, '13688669265', '', 'user_7tan2lj2jn', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (387, '13688669266', '', 'user_w88q6nof2r', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (388, '13688669267', '', 'user_9aze983wkj', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (389, '13688669268', '', 'user_wtioxpbho1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (390, '13688669269', '', 'user_yf70g0cjfu', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (391, '13688669270', '', 'user_i1w18vru0l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (392, '13688669271', '', 'user_6lr3w5npe5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (393, '13688669272', '', 'user_9n8rjbb9gp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (394, '13688669273', '', 'user_fe3u4g7p1f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (395, '13688669274', '', 'user_618vib46zb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (396, '13688669275', '', 'user_mj4b8uxpu3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (397, '13688669276', '', 'user_3jq7brld6h', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (398, '13688669277', '', 'user_8577262ob3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (399, '13688669278', '', 'user_x63u1e3sap', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (400, '13688669279', '', 'user_o2c2l1j9zs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (401, '13688669280', '', 'user_rtupie4qut', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (402, '13688669281', '', 'user_othsv0bkha', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (403, '13688669282', '', 'user_4wqa1vn3kw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (404, '13688669283', '', 'user_xmhuythdnn', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (405, '13688669284', '', 'user_alzyibl549', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (406, '13688669285', '', 'user_3nhqsa0htg', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (407, '13688669286', '', 'user_vn81ys9n64', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (408, '13688669287', '', 'user_iz6t7kpxz2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (409, '13688669288', '', 'user_7gnmjhg1rh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (410, '13688669289', '', 'user_r2i71mq5lk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (411, '13688669290', '', 'user_gevxv4bfda', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (412, '13688669291', '', 'user_hqneva0vaz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (413, '13688669292', '', 'user_8fvquxjm0t', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (414, '13688669293', '', 'user_9u8dxzs9nk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (415, '13688669294', '', 'user_8mwcrg9ez9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (416, '13688669295', '', 'user_erzqptr80b', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (417, '13688669296', '', 'user_97xgccgwaf', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (418, '13688669297', '', 'user_5rz6s0zuoh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (419, '13688669298', '', 'user_8o7cg6rp05', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (420, '13688669299', '', 'user_rhftetybs4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (421, '13688669300', '', 'user_mjh9uzi92z', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (422, '13688669301', '', 'user_bvaub566b3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (423, '13688669302', '', 'user_e97b0z12jc', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (424, '13688669303', '', 'user_mcc1pteaw5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (425, '13688669304', '', 'user_gz1ymib0dl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (426, '13688669305', '', 'user_owszpn6jem', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (427, '13688669306', '', 'user_nyqxiekdus', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (428, '13688669307', '', 'user_ilr27xnuxu', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (429, '13688669308', '', 'user_mhzftdfxi4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (430, '13688669309', '', 'user_kavgc8r8f6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (431, '13688669310', '', 'user_svztbpgr9w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (432, '13688669311', '', 'user_fdjhoysgy8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (433, '13688669312', '', 'user_drssks7627', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (434, '13688669313', '', 'user_53kuim78p1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (435, '13688669314', '', 'user_tpjaw9ygl6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (436, '13688669315', '', 'user_zlj9ao4lbw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (437, '13688669316', '', 'user_9nsckyz0k8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (438, '13688669317', '', 'user_rkyjx5n0k9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (439, '13688669318', '', 'user_e47mr17jmo', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (440, '13688669319', '', 'user_gdouwxu8bm', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (441, '13688669320', '', 'user_7odu05tcri', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (442, '13688669321', '', 'user_x6dga1y84j', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (443, '13688669322', '', 'user_ubzwoytroz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (444, '13688669323', '', 'user_brivojp5b1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (445, '13688669324', '', 'user_q5sluitgii', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (446, '13688669325', '', 'user_bbqazzzawl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (447, '13688669326', '', 'user_82fbd0oo0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (448, '13688669327', '', 'user_87ft14as7t', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (449, '13688669328', '', 'user_diabg787km', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (450, '13688669329', '', 'user_oo1gf0pxln', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (451, '13688669330', '', 'user_4fc1q8u2f3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (452, '13688669331', '', 'user_hgny53jwpn', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (453, '13688669332', '', 'user_5m75miuy6r', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (454, '13688669333', '', 'user_qx5ohjcayd', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (455, '13688669334', '', 'user_cff2zkpu62', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (456, '13688669335', '', 'user_dsb1rk9dsr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (457, '13688669336', '', 'user_50h3ylhjnz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (458, '13688669337', '', 'user_i02f5rjdab', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (459, '13688669338', '', 'user_3vwdqpif1l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (460, '13688669339', '', 'user_g6xewzg33w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (461, '13688669340', '', 'user_63u60u6o7f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (462, '13688669341', '', 'user_m6ikxcr92q', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (463, '13688669342', '', 'user_yzd5lmecur', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (464, '13688669343', '', 'user_m3163uc9al', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (465, '13688669344', '', 'user_1x6f94jq0v', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (466, '13688669345', '', 'user_keo0udy60g', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (467, '13688669346', '', 'user_87y52es2uw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (468, '13688669347', '', 'user_1zkkz9j0e6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (469, '13688669348', '', 'user_baznwk8x5q', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (470, '13688669349', '', 'user_b4hnhsmpxw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (471, '13688669350', '', 'user_1hr6wbd939', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (472, '13688669351', '', 'user_4w7dhr290a', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (473, '13688669352', '', 'user_tkxg6jo3xa', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (474, '13688669353', '', 'user_saosjqptnq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (475, '13688669354', '', 'user_wjge9hxzfv', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (476, '13688669355', '', 'user_8ex8ynmec4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (477, '13688669356', '', 'user_beih06msot', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (478, '13688669357', '', 'user_e4tuso2fad', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (479, '13688669358', '', 'user_iolxs2wbfs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (480, '13688669359', '', 'user_5trre9akf1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (481, '13688669360', '', 'user_y3l832hamq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (482, '13688669361', '', 'user_gs7kvt65y8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (483, '13688669362', '', 'user_8rda39nfpx', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (484, '13688669363', '', 'user_wix6t6g14l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (485, '13688669364', '', 'user_s2k023vtn7', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (486, '13688669365', '', 'user_qc3nhavb9f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (487, '13688669366', '', 'user_98eoecfe9s', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (488, '13688669367', '', 'user_kknik7xw80', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (489, '13688669368', '', 'user_17d7bifhpp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (490, '13688669369', '', 'user_04vbus432n', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (491, '13688669370', '', 'user_3e1xl0tvss', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (492, '13688669371', '', 'user_jpvv20rmfk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (493, '13688669372', '', 'user_51jd3tfl3e', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (494, '13688669373', '', 'user_agt44szvcb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (495, '13688669374', '', 'user_pr7icguenq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (496, '13688669375', '', 'user_2jl0qaecm0', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (497, '13688669376', '', 'user_m1fxzx8i0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (498, '13688669377', '', 'user_fh7a1j0vaz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (499, '13688669378', '', 'user_ty7afbm01v', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (500, '13688669379', '', 'user_bwazk1tt71', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (501, '13688669380', '', 'user_c1wrwmqzfi', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (502, '13688669381', '', 'user_nbfyg2pfql', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (503, '13688669382', '', 'user_h85lj9y0jy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (504, '13688669383', '', 'user_e0r5gg439j', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (505, '13688669384', '', 'user_k0s8h8v8wt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (506, '13688669385', '', 'user_0v423qhiz2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (507, '13688669386', '', 'user_zgze48neoq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (508, '13688669387', '', 'user_un4nppmh7k', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (509, '13688669388', '', 'user_knr2flv5mr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (510, '13688669389', '', 'user_cvhg3r8aqj', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (511, '13688669390', '', 'user_92xh46mlff', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (512, '13688669391', '', 'user_vhp8pxmhk6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (513, '13688669392', '', 'user_hc4c7z9y3k', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (514, '13688669393', '', 'user_03ikpqtn96', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (515, '13688669394', '', 'user_g0l23kj1ta', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (516, '13688669395', '', 'user_hdd1qkfbjy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (517, '13688669396', '', 'user_vmc478haq2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (518, '13688669397', '', 'user_g16kk9w1jp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (519, '13688669398', '', 'user_vlviloabak', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (520, '13688669399', '', 'user_f4t9c9x0qs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (521, '13688669400', '', 'user_uhd0vskqux', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (522, '13688669401', '', 'user_uidqqwety9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (523, '13688669402', '', 'user_ijqz4fb077', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (524, '13688669403', '', 'user_d16wfogt38', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (525, '13688669404', '', 'user_50cj7qxejp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (526, '13688669405', '', 'user_w0mawjfxbf', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (527, '13688669406', '', 'user_vihcs8gddy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (528, '13688669407', '', 'user_1io84j51kb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (529, '13688669408', '', 'user_sac23jn0ct', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (530, '13688669409', '', 'user_84saoi0eaq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (531, '13688669410', '', 'user_bqfd0lusff', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (532, '13688669411', '', 'user_a717jzadbk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (533, '13688669412', '', 'user_3e6nd805yp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (534, '13688669413', '', 'user_bgkv3zjjsy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (535, '13688669414', '', 'user_4lzfuo6hcl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (536, '13688669415', '', 'user_y748pleoq8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (537, '13688669416', '', 'user_ciyuki97of', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (538, '13688669417', '', 'user_kaulf89rnl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (539, '13688669418', '', 'user_h0dan7ux0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (540, '13688669419', '', 'user_fvmx4u2re0', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (541, '13688669420', '', 'user_njomftlkps', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (542, '13688669421', '', 'user_2ezx5lxtc4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (543, '13688669422', '', 'user_161mxzchbt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (544, '13688669423', '', 'user_f8e3enit63', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (545, '13688669424', '', 'user_j1ygvb30zr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (546, '13688669425', '', 'user_lskpl9geya', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (547, '13688669426', '', 'user_feww9njnhi', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (548, '13688669427', '', 'user_e8x6u5i9ca', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (549, '13688669428', '', 'user_17al8oqa4w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (550, '13688669429', '', 'user_nbo1m8bazt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (551, '13688669430', '', 'user_rqfyp2isyr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (552, '13688669431', '', 'user_epr1i52q5x', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (553, '13688669432', '', 'user_x154dr8sch', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (554, '13688669433', '', 'user_i5lvnupsu6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (555, '13688669434', '', 'user_qsnre265gc', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (556, '13688669435', '', 'user_7f3zwt1uso', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (557, '13688669436', '', 'user_qgkrbv1r7p', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (558, '13688669437', '', 'user_b39j58u8ql', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (559, '13688669438', '', 'user_wby0tn39v5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (560, '13688669439', '', 'user_9vt11wm6wb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (561, '13688669440', '', 'user_y4rokt5rzh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (562, '13688669441', '', 'user_lyarwzepjm', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (563, '13688669442', '', 'user_er844jel5s', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (564, '13688669443', '', 'user_2gkdrbu7rd', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (565, '13688669444', '', 'user_fnks15rgap', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (566, '13688669445', '', 'user_fe79dtlbf3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (567, '13688669446', '', 'user_jrl1kdhopy', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (568, '13688669447', '', 'user_p5h5hfw0h5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (569, '13688669448', '', 'user_756lckggox', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (570, '13688669449', '', 'user_9w56lad204', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (571, '13688669450', '', 'user_kjfvuonq64', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (572, '13688669451', '', 'user_k1i16oya8x', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (573, '13688669452', '', 'user_z4wz2wq9oj', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (574, '13688669453', '', 'user_jotms6c1vz', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (575, '13688669454', '', 'user_29iu6j1olp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (576, '13688669455', '', 'user_rfkqpu7bs1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (577, '13688669456', '', 'user_yecqp8c38k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (578, '13688669457', '', 'user_1mbkrz4rng', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (579, '13688669458', '', 'user_bx6h4wu47y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (580, '13688669459', '', 'user_usub0nsxez', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (581, '13688669460', '', 'user_2vvxjpuwgr', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (582, '13688669461', '', 'user_9tmhy4nfm1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (583, '13688669462', '', 'user_q1gyjoatnm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (584, '13688669463', '', 'user_vaqe3soyoz', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (585, '13688669464', '', 'user_bz81fj51ul', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (586, '13688669465', '', 'user_pwp8w2oife', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (587, '13688669466', '', 'user_6i8a8jpc4a', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (588, '13688669467', '', 'user_e19oms872y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (589, '13688669468', '', 'user_7jnvjujuk5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (590, '13688669469', '', 'user_1brabvuxfp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (591, '13688669470', '', 'user_w25xjchkmt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (592, '13688669471', '', 'user_qc38678j1q', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (593, '13688669472', '', 'user_5wqfc087pg', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (594, '13688669473', '', 'user_l921wy6ghf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (595, '13688669474', '', 'user_qgdwy1c8ya', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (596, '13688669475', '', 'user_2ftowbar49', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (597, '13688669476', '', 'user_e0rqhfdde9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (598, '13688669477', '', 'user_vpswd32xps', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (599, '13688669478', '', 'user_ec479wdojq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (600, '13688669479', '', 'user_6kz95u775k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (601, '13688669480', '', 'user_iyyh1jdjvk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (602, '13688669481', '', 'user_jbv97r3zcf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (603, '13688669482', '', 'user_1t7nmmwx2g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (604, '13688669483', '', 'user_fb8j6mb1cn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (605, '13688669484', '', 'user_ld0b3fd8uk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (606, '13688669485', '', 'user_sv8tt0fhb0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (607, '13688669486', '', 'user_ovqhhaqzfs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (608, '13688669487', '', 'user_mdybbx800t', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (609, '13688669488', '', 'user_dy1n5yoxhv', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (610, '13688669489', '', 'user_xefu4y7d2d', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (611, '13688669490', '', 'user_4aun9z96dn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (612, '13688669491', '', 'user_guva8ofunq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (613, '13688669492', '', 'user_6l4gzaotnf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (614, '13688669493', '', 'user_ngbcy6a2zk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (615, '13688669494', '', 'user_dqqj7ti3pd', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (616, '13688669495', '', 'user_5zq4rzlbik', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (617, '13688669496', '', 'user_7e0qi512hf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (618, '13688669497', '', 'user_jpmnhzwesi', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (619, '13688669498', '', 'user_00xb9uvv0m', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (620, '13688669499', '', 'user_nxn2ldt3gl', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (621, '13688669500', '', 'user_cyd1a9zfqw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (622, '13688669501', '', 'user_0nhklq4xie', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (623, '13688669502', '', 'user_rtf3z1wptn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (624, '13688669503', '', 'user_ov4uix8csm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (625, '13688669504', '', 'user_lxi5i68cdf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (626, '13688669505', '', 'user_do1slgl1ph', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (627, '13688669506', '', 'user_qj8pbsjpl5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (628, '13688669507', '', 'user_ygrl56l48d', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (629, '13688669508', '', 'user_maynz9h3vn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (630, '13688669509', '', 'user_m7qnvuej5k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (631, '13688669510', '', 'user_ceg7kezzrd', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (632, '13688669511', '', 'user_v7ky9w9v6f', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (633, '13688669512', '', 'user_kk8rzbittq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (634, '13688669513', '', 'user_mskczihgi8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (635, '13688669514', '', 'user_0tmadlzf1j', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (636, '13688669515', '', 'user_oeui72807w', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (637, '13688669516', '', 'user_ad49besbbs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (638, '13688669517', '', 'user_huzzpviaax', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (639, '13688669518', '', 'user_b0p11t8qon', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (640, '13688669519', '', 'user_14k8fje63n', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (641, '13688669520', '', 'user_bl5rc085pr', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (642, '13688669521', '', 'user_938covh4nt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (643, '13688669522', '', 'user_olt9qfefvw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (644, '13688669523', '', 'user_bhkdwtkfdg', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (645, '13688669524', '', 'user_we6790rc8v', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (646, '13688669525', '', 'user_wqmiqbrj3a', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (647, '13688669526', '', 'user_ccdo9ncgzt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (648, '13688669527', '', 'user_pk3l58b3cf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (649, '13688669528', '', 'user_meqr7dxbog', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (650, '13688669529', '', 'user_x70v1uaf0g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (651, '13688669530', '', 'user_yijawdxi8k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (652, '13688669531', '', 'user_qlv8jnv927', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (653, '13688669532', '', 'user_2tkj1s7aex', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (654, '13688669533', '', 'user_5vbfw1gln6', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (655, '13688669534', '', 'user_zseyyi59z2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (656, '13688669535', '', 'user_8ch1tq5bfp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (657, '13688669536', '', 'user_gdgb5nbkqn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (658, '13688669537', '', 'user_rr5448qo4l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (659, '13688669538', '', 'user_e6zwifzqhw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (660, '13688669539', '', 'user_7ytv4vd6he', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (661, '13688669540', '', 'user_pc84newj49', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (662, '13688669541', '', 'user_h4wpk3e9ht', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (663, '13688669542', '', 'user_d3vt4vqim8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (664, '13688669543', '', 'user_eqr14mgaz2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (665, '13688669544', '', 'user_ldd4kzq961', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (666, '13688669545', '', 'user_w4qu1bb2lk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (667, '13688669546', '', 'user_0627bn8px3', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (668, '13688669547', '', 'user_64aj20cdf1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (669, '13688669548', '', 'user_l7u34b3ler', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (670, '13688669549', '', 'user_2ze9tl9994', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (671, '13688669550', '', 'user_m5phoejixm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (672, '13688669551', '', 'user_8ogdovuirm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (673, '13688669552', '', 'user_wfk4ebck83', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (674, '13688669553', '', 'user_oupbnni466', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (675, '13688669554', '', 'user_89967wcevq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (676, '13688669555', '', 'user_xr6g2q08cm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (677, '13688669556', '', 'user_m313bjckeq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (678, '13688669557', '', 'user_x25nq1ss14', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (679, '13688669558', '', 'user_jeidzxzp6y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (680, '13688669559', '', 'user_l7dkffo3n0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (681, '13688669560', '', 'user_pqio9ol2ln', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (682, '13688669561', '', 'user_k1cbsqi4gt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (683, '13688669562', '', 'user_p1i9b4p4sv', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (684, '13688669563', '', 'user_07yfm6qtl1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (685, '13688669564', '', 'user_y3mmmk1kak', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (686, '13688669565', '', 'user_lkxjnwtqa7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (687, '13688669566', '', 'user_v5w9pm18iq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (688, '13688669567', '', 'user_364l5poxpw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (689, '13688669568', '', 'user_trlfkptv3g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (690, '13688669569', '', 'user_rkheg82tnp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (691, '13688669570', '', 'user_5zmzrjgo5o', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (692, '13688669571', '', 'user_6uacx6cqhp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (693, '13688669572', '', 'user_wnats1phoj', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (694, '13688669573', '', 'user_dcm1w7674v', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (695, '13688669574', '', 'user_r7ik7ae272', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (696, '13688669575', '', 'user_xk77qyl4gl', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (697, '13688669576', '', 'user_989d1fsji4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (698, '13688669577', '', 'user_macs32vcct', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (699, '13688669578', '', 'user_z5mahfpa9r', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (700, '13688669579', '', 'user_tn1bnk3zir', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (701, '13688669580', '', 'user_95ajn6osry', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (702, '13688669581', '', 'user_qff1n375uc', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (703, '13688669582', '', 'user_gdjqlq4i6n', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (704, '13688669583', '', 'user_w6tsnpzfqn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (705, '13688669584', '', 'user_lqp4c4j2ch', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (706, '13688669585', '', 'user_1raii40ps1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (707, '13688669586', '', 'user_0r9izz201x', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (708, '13688669587', '', 'user_vlrp22q0rk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (709, '13688669588', '', 'user_f7kvbzb8i4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (710, '13688669589', '', 'user_yn8nntyyur', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (711, '13688669590', '', 'user_p58nxqajou', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (712, '13688669591', '', 'user_61msspy26k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (713, '13688669592', '', 'user_fqb0ch1hh1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (714, '13688669593', '', 'user_oyq3nszclx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (715, '13688669594', '', 'user_ggybvkn73t', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (716, '13688669595', '', 'user_po0gph6jgp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (717, '13688669596', '', 'user_hlzvh6wl1y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (718, '13688669597', '', 'user_btb024hqic', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (719, '13688669598', '', 'user_wqasvon847', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (720, '13688669599', '', 'user_rdp7fvaz3z', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (721, '13688669600', '', 'user_oh5q9kfkvc', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (722, '13688669601', '', 'user_ae21kmiles', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (723, '13688669602', '', 'user_b1ouyw3sww', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (724, '13688669603', '', 'user_9o5qz4s17l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (725, '13688669604', '', 'user_6urs1iwti9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (726, '13688669605', '', 'user_80pnfhyqyi', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (727, '13688669606', '', 'user_mynvmq4zcn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (728, '13688669607', '', 'user_q09fj27oc4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (729, '13688669608', '', 'user_v4e7hkfw63', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (730, '13688669609', '', 'user_x4sol5dj4f', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (731, '13688669610', '', 'user_v53dsicdtx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (732, '13688669611', '', 'user_fcoezs141i', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (733, '13688669612', '', 'user_viv3l4o52c', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (734, '13688669613', '', 'user_8j4m80dj76', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (735, '13688669614', '', 'user_r65xyt3opb', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (736, '13688669615', '', 'user_moi9x442th', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (737, '13688669616', '', 'user_qxkltii6ec', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (738, '13688669617', '', 'user_72vsybd20b', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (739, '13688669618', '', 'user_eai1g9ltu9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (740, '13688669619', '', 'user_h47ubi7f36', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (741, '13688669620', '', 'user_yxo46519hp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (742, '13688669621', '', 'user_499diayvwn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (743, '13688669622', '', 'user_ytomkocl3c', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (744, '13688669623', '', 'user_271mt5x5uo', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (745, '13688669624', '', 'user_h5s36mj609', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (746, '13688669625', '', 'user_sklzx3z3nq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (747, '13688669626', '', 'user_9v2ikjkwm8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (748, '13688669627', '', 'user_w5jjd49ipx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (749, '13688669628', '', 'user_3rzokm18yo', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (750, '13688669629', '', 'user_vm6zz6ejs7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (751, '13688669630', '', 'user_r494p0jlle', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (752, '13688669631', '', 'user_c50thdpyv0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (753, '13688669632', '', 'user_hc4qi0sfo2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (754, '13688669633', '', 'user_w8y4nebzxs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (755, '13688669634', '', 'user_mxxqu6isy9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (756, '13688669635', '', 'user_sd3f76mtg3', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (757, '13688669636', '', 'user_6zb026vsmm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (758, '13688669637', '', 'user_mzya91331l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (759, '13688669638', '', 'user_adu5gmym2g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (760, '13688669639', '', 'user_31bidh90w5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (761, '13688669640', '', 'user_iectlacbk7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (762, '13688669641', '', 'user_by8vl07035', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (763, '13688669642', '', 'user_n8ii3p3b6z', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (764, '13688669643', '', 'user_eopvczuyzq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (765, '13688669644', '', 'user_2m36qy9yht', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (766, '13688669645', '', 'user_re1q80zze2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (767, '13688669646', '', 'user_lelhu217ad', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (768, '13688669647', '', 'user_dyv7ll1h9r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (769, '13688669648', '', 'user_7zws9wi4cp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (770, '13688669649', '', 'user_tvseis2smv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (771, '13688669650', '', 'user_975ls201ra', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (772, '13688669651', '', 'user_0416smxpjc', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (773, '13688669652', '', 'user_dkdw3wuvxt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (774, '13688669653', '', 'user_d1z5jtfh2g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (775, '13688669654', '', 'user_yg9r3ws35z', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (776, '13688669655', '', 'user_9cos7jzgmy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (777, '13688669656', '', 'user_679sq0b6eb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (778, '13688669657', '', 'user_kzk5m1pgqv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (779, '13688669658', '', 'user_28qetr02oe', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (780, '13688669659', '', 'user_peazcxx51i', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (781, '13688669660', '', 'user_roghf2lerp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (782, '13688669661', '', 'user_sth9xhgsoj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (783, '13688669662', '', 'user_38ejcd1npp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (784, '13688669663', '', 'user_m0y48rqbxs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (785, '13688669664', '', 'user_a0f919rrdw', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (786, '13688669665', '', 'user_veddhmnfa7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (787, '13688669666', '', 'user_ltexwx6bm6', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (788, '13688669667', '', 'user_euqn9si8dg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (789, '13688669668', '', 'user_wm4s4v0o87', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (790, '13688669669', '', 'user_mthbqaorve', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (791, '13688669670', '', 'user_k63cindeeh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (792, '13688669671', '', 'user_kz30acb48r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (793, '13688669672', '', 'user_1jmeyd8a28', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (794, '13688669673', '', 'user_su5oi3kpfx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (795, '13688669674', '', 'user_4eurdp0387', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (796, '13688669675', '', 'user_orxdegd4d4', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (797, '13688669676', '', 'user_50vxeli8rd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (798, '13688669677', '', 'user_vqsnl66ot5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (799, '13688669678', '', 'user_en3q7qyiqb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (800, '13688669679', '', 'user_0yyk9mnng0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (801, '13688669680', '', 'user_l48qjtjmxl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (802, '13688669681', '', 'user_1wvigh2hxq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (803, '13688669682', '', 'user_gr0bhwfvhu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (804, '13688669683', '', 'user_qpku5s9nr6', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (805, '13688669684', '', 'user_kyhepj12kd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (806, '13688669685', '', 'user_3x99ypxvqy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (807, '13688669686', '', 'user_np8bk7b07w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (808, '13688669687', '', 'user_dnu8kswk6o', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (809, '13688669688', '', 'user_u01mnauofu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (810, '13688669689', '', 'user_48sv36r3xs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (811, '13688669690', '', 'user_6ojf6nhxch', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (812, '13688669691', '', 'user_wd32jqla7r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (813, '13688669692', '', 'user_zsdxxcpkuq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (814, '13688669693', '', 'user_ib97xw8nl2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (815, '13688669694', '', 'user_b7qb56z1p0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (816, '13688669695', '', 'user_i7jmrgmisg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (817, '13688669696', '', 'user_5nf21zmos7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (818, '13688669697', '', 'user_mck6nqe55g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (819, '13688669698', '', 'user_6xnadvfus7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (820, '13688669699', '', 'user_450u8mqe4z', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (821, '13688669700', '', 'user_hv55cq5n1w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (822, '13688669701', '', 'user_qiy3ulbyd0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (823, '13688669702', '', 'user_sx58542ugn', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (824, '13688669703', '', 'user_9xs0uuyds5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (825, '13688669704', '', 'user_zveuo0azp4', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (826, '13688669705', '', 'user_qwt4x5faay', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (827, '13688669706', '', 'user_ztzuqeybvp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (828, '13688669707', '', 'user_kh5n7wfie8', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (829, '13688669708', '', 'user_dwxkvw03b7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (830, '13688669709', '', 'user_3tyhv91k7p', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (831, '13688669710', '', 'user_0jwdppbvdk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (832, '13688669711', '', 'user_twx4z08vzb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (833, '13688669712', '', 'user_lly5v9ibpk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (834, '13688669713', '', 'user_kkho7xpu2u', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (835, '13688669714', '', 'user_l51d2os1wh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (836, '13688669715', '', 'user_i6gkyfawkv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (837, '13688669716', '', 'user_v2k5vdh4he', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (838, '13688669717', '', 'user_7k9ql2go9e', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (839, '13688669718', '', 'user_tnz3f99w2c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (840, '13688669719', '', 'user_833zw6fgxz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (841, '13688669720', '', 'user_f4hq0ga1oj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (842, '13688669721', '', 'user_uxuxrig26t', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (843, '13688669722', '', 'user_grn37re7bg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (844, '13688669723', '', 'user_5msjf8z2fj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (845, '13688669724', '', 'user_53x3w7l7mv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (846, '13688669725', '', 'user_pyolvy8m0v', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (847, '13688669726', '', 'user_12i4hpk09n', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (848, '13688669727', '', 'user_zjhyyt7zfq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (849, '13688669728', '', 'user_avv8zgw4qk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (850, '13688669729', '', 'user_khxmnqb6ni', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (851, '13688669730', '', 'user_i80iu0pb5k', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (852, '13688669731', '', 'user_lqkx9uurmj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (853, '13688669732', '', 'user_ewiswre8fm', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (854, '13688669733', '', 'user_d0nwznn64y', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (855, '13688669734', '', 'user_v7wyz44u6m', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (856, '13688669735', '', 'user_ipkx0z0nno', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (857, '13688669736', '', 'user_64tnyqwxun', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (858, '13688669737', '', 'user_r9bjp3fegg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (859, '13688669738', '', 'user_i36s8hsq72', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (860, '13688669739', '', 'user_cqe1zvq4dr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (861, '13688669740', '', 'user_omdgisd0ls', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (862, '13688669741', '', 'user_3mgz8z636y', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (863, '13688669742', '', 'user_ts3qtzwp68', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (864, '13688669743', '', 'user_56seol3kxp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (865, '13688669744', '', 'user_4x55muo0si', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (866, '13688669745', '', 'user_ny46fscq78', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (867, '13688669746', '', 'user_raano2keb9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (868, '13688669747', '', 'user_31m00sj2bt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (869, '13688669748', '', 'user_2ovmzeq4f3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (870, '13688669749', '', 'user_dis12x5ko3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (871, '13688669750', '', 'user_jx9defd5pu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (872, '13688669751', '', 'user_k3u9zems0n', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (873, '13688669752', '', 'user_o84aucm31f', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (874, '13688669753', '', 'user_h4msccd8qo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (875, '13688669754', '', 'user_6sk051bxed', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (876, '13688669755', '', 'user_1s1r4kks05', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (877, '13688669756', '', 'user_2pfvfdb27x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (878, '13688669757', '', 'user_k5nxhuil69', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (879, '13688669758', '', 'user_6wu2vujv7x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (880, '13688669759', '', 'user_05jr9c63o0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (881, '13688669760', '', 'user_cc2l1lrlw5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (882, '13688669761', '', 'user_ieeqrlof8f', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (883, '13688669762', '', 'user_6m5ermqkua', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (884, '13688669763', '', 'user_mh99rug0nh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (885, '13688669764', '', 'user_n55ceoc392', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (886, '13688669765', '', 'user_72vzhk8py3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (887, '13688669766', '', 'user_bthii5wt36', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (888, '13688669767', '', 'user_mut3q0vunf', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (889, '13688669768', '', 'user_symgsydmbd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (890, '13688669769', '', 'user_7qs7kedl19', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (891, '13688669770', '', 'user_uwyx1i29m0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (892, '13688669771', '', 'user_ls2p6sldmi', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (893, '13688669772', '', 'user_1kmmkpegso', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (894, '13688669773', '', 'user_4zp483y1e7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (895, '13688669774', '', 'user_nr78kan9c3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (896, '13688669775', '', 'user_0r0m7ngv6x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (897, '13688669776', '', 'user_lknjznxmau', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (898, '13688669777', '', 'user_v9g6j6h0ah', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (899, '13688669778', '', 'user_wuyim37fx5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (900, '13688669779', '', 'user_l0lfqjjzs0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (901, '13688669780', '', 'user_6uyxk7pa4u', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (902, '13688669781', '', 'user_f17o0qymn9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (903, '13688669782', '', 'user_ogpqk1b39a', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (904, '13688669783', '', 'user_9jpofrgda1', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (905, '13688669784', '', 'user_n298v8udm3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (906, '13688669785', '', 'user_0biwjc5wwt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (907, '13688669786', '', 'user_xbbdx6wq53', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (908, '13688669787', '', 'user_nh79qly5ir', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (909, '13688669788', '', 'user_v86oajknbs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (910, '13688669789', '', 'user_e13odsshad', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (911, '13688669790', '', 'user_6cvwrirdtl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (912, '13688669791', '', 'user_nqr7bpgz67', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (913, '13688669792', '', 'user_wn1ae0p6gw', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (914, '13688669793', '', 'user_te48rluimb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (915, '13688669794', '', 'user_p2r85n4k8g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (916, '13688669795', '', 'user_ca8fdlrbty', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (917, '13688669796', '', 'user_toque00p0i', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (918, '13688669797', '', 'user_uiti5cdbhf', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (919, '13688669798', '', 'user_8pgku7viy8', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (920, '13688669799', '', 'user_cdafki4cwc', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (921, '13688669800', '', 'user_fyyk2yfpk5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (922, '13688669801', '', 'user_78e1meevls', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (923, '13688669802', '', 'user_qzwls7m33b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (924, '13688669803', '', 'user_jxuw8ixefk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (925, '13688669804', '', 'user_1xye60infx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (926, '13688669805', '', 'user_gvccna2mni', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (927, '13688669806', '', 'user_tftvpegd2c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (928, '13688669807', '', 'user_6ihh78vpox', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (929, '13688669808', '', 'user_46qroyojdl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (930, '13688669809', '', 'user_wwi4i2wb77', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (931, '13688669810', '', 'user_s28l0bryil', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (932, '13688669811', '', 'user_4lgib8jvrx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (933, '13688669812', '', 'user_fczpz5s31b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (934, '13688669813', '', 'user_3cvkn9pv9w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (935, '13688669814', '', 'user_wtvk7gx8ar', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (936, '13688669815', '', 'user_yrel6rbyyd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (937, '13688669816', '', 'user_hmxjnsbnon', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (938, '13688669817', '', 'user_cuxcl0d2oo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (939, '13688669818', '', 'user_1ax8x9zw0c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (940, '13688669819', '', 'user_p7v98oe5nm', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (941, '13688669820', '', 'user_m90rt3bwsz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (942, '13688669821', '', 'user_xhty5jm1hy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (943, '13688669822', '', 'user_7h88k22eo0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (944, '13688669823', '', 'user_5a75z9jcqa', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (945, '13688669824', '', 'user_3t0twwq0nh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (946, '13688669825', '', 'user_861ywr4gfr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (947, '13688669826', '', 'user_iwkz8k1zpx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (948, '13688669827', '', 'user_vzmhyoz1ap', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (949, '13688669828', '', 'user_5tmpddukgq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (950, '13688669829', '', 'user_h6siyam4hb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (951, '13688669830', '', 'user_n5yqq6mgka', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (952, '13688669831', '', 'user_an9epa7f2r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (953, '13688669832', '', 'user_5vr0cdy8sz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (954, '13688669833', '', 'user_xpanlhqjbq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (955, '13688669834', '', 'user_3cfykc172m', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (956, '13688669835', '', 'user_1n0jceyzim', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (957, '13688669836', '', 'user_4ixi7efxtr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (958, '13688669837', '', 'user_5adpp336iy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (959, '13688669838', '', 'user_mflzjd6e6b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (960, '13688669839', '', 'user_80bwfj72p7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (961, '13688669840', '', 'user_i3anusitco', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (962, '13688669841', '', 'user_yj4pcsrkl9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (963, '13688669842', '', 'user_7v9x6gxjdz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (964, '13688669843', '', 'user_2ahufmnyzp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (965, '13688669844', '', 'user_1oel6c441t', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (966, '13688669845', '', 'user_qxzcv0ib6g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (967, '13688669846', '', 'user_9uyh0i8ykg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (968, '13688669847', '', 'user_tb01d4d9ql', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (969, '13688669848', '', 'user_hwpkx6ovii', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (970, '13688669849', '', 'user_pqd04q9hq2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (971, '13688669850', '', 'user_4t7wkgkufh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (972, '13688669851', '', 'user_834e4vzf0e', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (973, '13688669852', '', 'user_pxk4urlnmo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (974, '13688669853', '', 'user_e3x6n0ff0d', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (975, '13688669854', '', 'user_wxnvsvb5ut', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (976, '13688669855', '', 'user_ehi7k4zpjb', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (977, '13688669856', '', 'user_om0pzyh3z1', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (978, '13688669857', '', 'user_9asdqbe7od', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (979, '13688669858', '', 'user_seuabngxt9', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (980, '13688669859', '', 'user_b0qvb27eiy', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (981, '13688669860', '', 'user_63sjue2tkh', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (982, '13688669861', '', 'user_cc3lvxfr1u', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (983, '13688669862', '', 'user_in37hfw5tk', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (984, '13688669863', '', 'user_jtg0c9tyqn', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (985, '13688669864', '', 'user_qzpipaj50w', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (986, '13688669865', '', 'user_ppnb4ljetq', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (987, '13688669866', '', 'user_zbcui7783k', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (988, '13688669867', '', 'user_ki4dxb9q9b', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (989, '13688669868', '', 'user_27b5dxktn0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (990, '13688669869', '', 'user_fxvb2av882', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (991, '13688669870', '', 'user_6vp3uflnwm', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (992, '13688669871', '', 'user_7ix7djbg30', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (993, '13688669872', '', 'user_vx8r39tjiu', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (994, '13688669873', '', 'user_l2wdiwule0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (995, '13688669874', '', 'user_z4qe1up5zx', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (996, '13688669875', '', 'user_bklo4b32lu', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (997, '13688669876', '', 'user_ax0y473ndh', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (998, '13688669877', '', 'user_yx2p44qww3', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (999, '13688669878', '', 'user_bnw9bzib34', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1000, '13688669879', '', 'user_cdj4ojh4pc', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1001, '13688669880', '', 'user_l7o3r96hn3', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1002, '13688669881', '', 'user_zbehzrz279', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1003, '13688669882', '', 'user_tql21zepcx', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1004, '13688669883', '', 'user_jnxnrk8qt0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1005, '13688669884', '', 'user_8e5twg6q0k', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1006, '13688669885', '', 'user_gfeusukbpp', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1007, '13688669886', '', 'user_sveivfswhn', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1008, '13688669887', '', 'user_qgf4t8jkx0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1009, '13688669888', '', 'user_4qh6bofkol', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info`  (
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '主键，用户id',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '城市名称',
  `introduce` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人介绍，不要超过128个字符',
  `fans` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '粉丝数量',
  `followee` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '关注的人的数量',
  `gender` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '性别，0：男，1：女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `credits` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '积分',
  `level` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '会员级别，0~9级,0代表未开通会员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tb_voucher`;
CREATE TABLE `tb_voucher`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '商铺id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '代金券标题',
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `rules` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '使用规则',
  `pay_value` bigint(10) UNSIGNED NOT NULL COMMENT '支付金额，单位是分。例如200代表2元',
  `actual_value` bigint(10) NOT NULL COMMENT '抵扣金额，单位是分。例如200代表2元',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0,普通券；1,秒杀券',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1,上架; 2,下架; 3,过期',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_voucher
-- ----------------------------
INSERT INTO `tb_voucher` VALUES (1, 1, '50元代金券', '周一至周日均可使用', '全场通用\\n无需预约\\n可无限叠加\\不兑现、不找零\\n仅限堂食', 4750, 5000, 0, 1, '2022-01-04 09:42:39', '2022-01-04 09:43:31');

-- ----------------------------
-- Table structure for tb_voucher_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_voucher_order`;
CREATE TABLE `tb_voucher_order`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '下单的用户id',
  `voucher_id` bigint(20) UNSIGNED NOT NULL COMMENT '购买的代金券id',
  `pay_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '支付方式 1：余额支付；2：支付宝；3：微信',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单状态，1：未支付；2：已支付；3：已核销；4：已取消；5：退款中；6：已退款',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `use_time` timestamp NULL DEFAULT NULL COMMENT '核销时间',
  `refund_time` timestamp NULL DEFAULT NULL COMMENT '退款时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_voucher_order
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
