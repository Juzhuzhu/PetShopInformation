/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : pet

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 19/02/2024 16:29:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '管理员id（主键）',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码-用于登录账号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `head_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像图片地址',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录令牌',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` date NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(0) NULL DEFAULT NULL COMMENT '逻辑删除:0=未删除,1=已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员实体' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin1', '1231231231', 'password1', 'guangzhou.aliyuncs.com/Screenshot_20200827_231650.jpg', 'eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgv1c9ENDXYNUtJRykwBChgCGXmJualAZmJKbmaeoVItAE5flVMsAAAA.CdM_ohT9o-FYsZFTj90QefXbS-_olceEOEmSNcReDHMNDul1LyxSiHQkBf_KXsqTq1Gn7P1jOb-uUaLcF7oIpw', NULL, '2024-02-15', 1);
INSERT INTO `admin` VALUES ('10', '哇哈哈哈哈', '43154563245', 'password10', NULL, NULL, NULL, '2024-02-15', 0);
INSERT INTO `admin` VALUES ('100', 'admin100', '5435345345', 'password100', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('11', 'admin11', '1231212412', 'password11', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('12', 'admin12', '2131255467', 'password12', NULL, 'eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgv1c9ENDXYNUtJRykwBChgaAVl5ibmpQHZiSm5mHlCgFgDX45aULgAAAA.SJr0Jqe5-p-LXgOc_4PE8z7I2b_tHS1sbsALUYR23kPba89G8eiw5kHuFLujFKiTbmQZQISqRzDXDyhlySz4PA', NULL, NULL, 0);
INSERT INTO `admin` VALUES ('13', 'admin13', '4567657678', 'password13', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('14', 'admin14', '17677487445', 'password14', 'https://lkm191.oss-cn-guangzhou.aliyuncs.com/Screenshot_20200827_231650.jpg', 'eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgv1c9ENDXYNUtJRykwBChiaAFl5ibmpQHZiSm5mHlCgFgCwAjgULgAAAA.VfpI3gFhCO-H7qXk7CaFNAIivZIknVqPbrd_xJfSMm3R7cvMWLrNF5Chn2agvLlPO4s-IwKep1EqH8XkOdL7Cg', NULL, '2024-02-16', 0);
INSERT INTO `admin` VALUES ('15', 'admin15', NULL, 'password15', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('16', 'admin16', NULL, 'password16', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('17', 'admin17', NULL, 'password17', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('18', 'admin18', NULL, 'password18', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('19', 'admin19', NULL, 'password19', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('2', 'admin2', NULL, 'password2', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('20', 'admin20', NULL, 'password20', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('21', 'admin21', NULL, 'password21', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('22', 'admin22', NULL, 'password22', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('23', 'admin23', NULL, 'password23', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('24', 'admin24', NULL, 'password24', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('25', 'admin25', NULL, 'password25', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('26', 'admin26', NULL, 'password26', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('27', 'admin27', NULL, 'password27', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('28', 'admin28', NULL, 'password28', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('29', 'admin29', NULL, 'password29', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('3', 'admin3', NULL, 'password3', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('30', 'admin30', NULL, 'password30', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('31', 'admin31', NULL, 'password31', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('32', 'admin32', NULL, 'password32', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('33', 'admin33', NULL, 'password33', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('34', 'admin34', NULL, 'password34', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('35', 'admin35', NULL, 'password35', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('36', 'admin36', NULL, 'password36', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('37', 'admin37', NULL, 'password37', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('38', 'admin38', NULL, 'password38', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('39', 'admin39', NULL, 'password39', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('4', 'admin4', NULL, 'password4', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('40', 'admin40', NULL, 'password40', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('41', 'admin41', NULL, 'password41', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('42', 'admin42', NULL, 'password42', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('43', 'admin43', NULL, 'password43', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('44', 'admin44', NULL, 'password44', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('45', 'admin45', NULL, 'password45', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('46', 'admin46', NULL, 'password46', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('47', 'admin47', NULL, 'password47', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('48', 'admin48', NULL, 'password48', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('49', 'admin49', NULL, 'password49', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('5', 'admin5', NULL, 'password5', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('50', 'admin50', NULL, 'password50', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('51', 'admin51', NULL, 'password51', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('52', 'admin52', NULL, 'password52', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('53', 'admin53', NULL, 'password53', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('54', 'admin54', NULL, 'password54', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('55', 'admin55', NULL, 'password55', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('56', 'admin56', NULL, 'password56', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('57', 'admin57', NULL, 'password57', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('58', 'admin58', NULL, 'password58', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('59', 'admin59', NULL, 'password59', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('6', 'admin6', NULL, 'password6', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('60', 'admin60', NULL, 'password60', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('61', 'admin61', NULL, 'password61', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('62', 'admin62', NULL, 'password62', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('63', 'admin63', NULL, 'password63', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('64', 'admin64', NULL, 'password64', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('65', 'admin65', NULL, 'password65', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('66', 'admin66', NULL, 'password66', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('67', 'admin67', NULL, 'password67', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('68', 'admin68', NULL, 'password68', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('69', 'admin69', NULL, 'password69', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('7', 'admin7', NULL, 'password7', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('70', 'admin70', NULL, 'password70', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('71', 'admin71', NULL, 'password71', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('72', 'admin72', NULL, 'password72', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('73', 'admin73', NULL, 'password73', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('74', 'admin74', NULL, 'password74', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('75', 'admin75', NULL, 'password75', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('76', 'admin76', NULL, 'password76', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('77', 'admin77', NULL, 'password77', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('78', 'admin78', NULL, 'password78', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('79', 'admin79', NULL, 'password79', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('8', 'admin8', NULL, 'password8', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('80', 'admin80', NULL, 'password80', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('81', 'admin81', NULL, 'password81', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('82', 'admin82', NULL, 'password82', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('83', 'admin83', NULL, 'password83', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('84', 'admin84', NULL, 'password84', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('85', 'admin85', NULL, 'password85', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('86', 'admin86', NULL, 'password86', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('87', 'admin87', NULL, 'password87', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('88', 'admin88', NULL, 'password88', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('89', 'admin89', NULL, 'password89', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('9', 'admin9', NULL, 'password9', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('90', 'admin90', NULL, 'password90', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('91', 'admin91', NULL, 'password91', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('92', 'admin92', NULL, 'password92', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('93', 'admin93', NULL, 'password93', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('94', 'admin94', NULL, 'password94', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('948366483971375104', 'string', NULL, 'string', NULL, NULL, NULL, NULL, 1);
INSERT INTO `admin` VALUES ('948371307882348544', '13412412', NULL, 'string', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('948371340618891264', 'qqqqq', NULL, 'qqqqq', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('948376481833156608', 'jytj', NULL, 'kyuky', NULL, NULL, NULL, NULL, 1);
INSERT INTO `admin` VALUES ('948435821986316288', '宋静', NULL, '213154543', NULL, NULL, NULL, NULL, 1);
INSERT INTO `admin` VALUES ('948440146263408640', '龚勇', NULL, '7-0990-', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('95', 'admin95', NULL, 'password95', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('955662498395062272', '橘猪猪', '19288374623', '3123354h@qq.com', 'https://lkm191.oss-cn-guangzhou.aliyuncs.com/Screenshot_20200827_231650.jpg', 'eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgv1c9ENDXYNUtJRykwBCliampqZGZlYWhhbmhqYGRmZGwFl8hJzU4Fyz1bOeN6zCoiUagHVkClPQAAAAA.uBPSMc3nONE_Rf5aFYQBThbeskS5sztmJIWDgD5t2THmZp6QhIro3bmvbD8qsWos1I1Z7h2yWk5uWCkzo-0tuQ', '2024-02-15', '2024-02-15', 0);
INSERT INTO `admin` VALUES ('955663905663746048', '哈哈哈', '3217893123', 'fgjwqiojio@qq.com', 'https://lkm191.oss-cn-guangzhou.aliyuncs.com/Screenshot_20200827_231650.jpg', NULL, '2024-02-15', '2024-02-15', 0);
INSERT INTO `admin` VALUES ('96', 'admin96', NULL, 'password96', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('97', 'admin97', NULL, 'password97', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('98', 'admin98', NULL, 'password98', NULL, NULL, NULL, NULL, 0);
INSERT INTO `admin` VALUES ('99', 'admin99', NULL, 'password99', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '客户ID（主键）',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户姓名',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` date NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '逻辑删除:0=未删除,1=已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('10vev', '陈十二', '13000130000', 'chenshier@example.com', '福建省厦门市思明区', NULL, '2024-02-07', 1);
INSERT INTO `customer` VALUES ('11dqws', '马十三', '12900129000', 'mashisan@example.com', '陕西省西安市碑林区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('12gvfdgd', '胡十四', '12800128000', 'hushisi@example.com', '安徽省合肥市庐阳区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('13cqwev', '朱十五', '12700127000', 'zhushiwu@example.com', '山东省济南市历下区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('14fghgh', '秦十六', '12600126000', 'qinshiliu@example.com', '辽宁省沈阳市和平区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('15sdasd', '尤十七', '12500125000', 'youshiqi@example.com', '吉林省长春市朝阳区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('16berbre', '许十八', '12400124000', 'xushiba@example.com', '黑龙江省哈尔滨市南岗区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('17bdfbfg', '何十九', '12300123000', 'heshijiu@example.com', '河北省石家庄市长安区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('18fgbbtr', '吕二十', '12200122000', 'lvershi@example.com', '山西省太原市小店区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('19dqwd', '施二十一', '12100121000', 'shiershiyi@example.com', '天津市河西区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('1mhnr', '张三', '13800138000', 'zhangsan@example.com', '北京市朝阳区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('20berb', '张二十二', '12000120000', 'zhangershier@example.com', '重庆市渝中区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('21fdfev', '李二十三', '11900119000', 'liershisan@example.com', '北京市海淀区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('22vdsvsd', '王二十四', '11800118000', 'wangershisi@example.com', '上海市黄浦区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('23fafa', '赵二十五', '11700117000', 'zhaowershiwu@example.com', '广东省广州市天河区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('24dasdas', '孙二十六', '11600116000', 'sunershiliu@example.com', '浙江省杭州市下城区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('25xcasdcas', '周二十七', '11500115000', 'zhouershiqi@example.com', '江苏省南京市玄武区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('26hjtryregwe', '吴二十八', '11400114000', 'wuershiba@example.com', '湖北省武汉市江汉区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('27dqwdqg', '郑二十九', '11300113000', 'zhengershijiu@example.com', '湖南省长沙市天心区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('28gegfweg', '刘三十', '11200112000', 'liuershi@example.com', '河南省郑州市二七区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('29vcwefwe', '陈三十一', '11100111000', 'chengershiyi@example.com', '福建省厦门市湖里区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('2brftbc', '李四', '13900139000', 'lisi@example.com', '上海市浦东新区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('30gfjyrtqw', '马三十二', '11000110000', 'magershisan@example.com', '陕西省西安市莲湖区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('31245hgf56', '胡三十三', '10900109000', 'hengershisi@example.com', '安徽省合肥市蜀山区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('32ty64412y6', '朱三十四', '10800108000', 'zhushengershiwu@example.com', '山东省济南市市中区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('3324y5654', '秦三十五', '10700107000', 'qinshisanshiwu@example.com', '辽宁省沈阳市铁西区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('3414576562', '尤三十六', '10600106000', 'youshisanshiliu@example.com', '吉林省长春市宽城区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('36', '何三十八', '10400104000', 'heshisanshijiu@example.com', '河北省石家庄市桥西区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('37', '吕三十九', '10300103000', 'lvshisanshi@example.com', '山西省太原市迎泽区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('38', '施四十', '10200102000', 'shishisi@example.com', '天津市河东区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('39', '张四十一', '10100101000', 'zhangsishiyi@example.com', '重庆市九龙坡区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('3bntrydfdf', '王五', '13700137000', 'wangwu@example.com', '广东省深圳市福田区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('4', '赵六', '13600136000', 'zhaoliu@example.com', '四川省成都市武侯区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('40', '李四十二', '10000100000', 'lisishier@example.com', '北京市丰台区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('41', '王四十三', '9900109000', 'wangsishisan@example.com', '上海市徐汇区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('42', '赵四十四', '9800108000', 'zhaosishisi@example.com', '广东省广州市白云区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('43', '孙四十五', '9700107000', 'sunsishiwu@example.com', '浙江省杭州市江干区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('44', '周四十六', '9600106000', 'zhoushishiliu@example.com', '江苏省南京市建邺区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('45', '吴四十七', '9500105000', 'wusishiqi@example.com', '湖北省武汉市武昌区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('46', '郑四十八', '9400104000', 'zhengsishijiu@example.com', '湖南省长沙市雨花区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('47', '刘四十九', '9300103000', 'liusishishi@example.com', '河南省郑州市中原区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('48', '陈五十', '9200102000', 'chenshisiyi@example.com', '福建省厦门市集美区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('49', '马五十一', '9100101000', 'mashisisan@example.com', '陕西省西安市未央区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('5', '孙七', '13500135000', 'sunqi@example.com', '浙江省杭州市西湖区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('50', '胡五十二', '9000100000', 'hushisisi@example.com', '安徽省合肥市瑶海区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('5252365', '李四', '12353242342', '23212323@qq.com', '黑龙江省哈尔滨市道里区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('6', '周八', '13400134000', 'zhouba@example.com', '江苏省南京市鼓楼区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('6367876', '许三十七', '10500105000', 'xushisanshiqi@example.com', '黑龙江省哈尔滨市道里区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('7', '吴九', '13300133000', 'wujiu@example.com', '湖北省武汉市洪山区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('8', '郑十', '13200132000', 'zhengshi@example.com', '湖南省长沙市岳麓区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('9', '刘十一', '13100131000', 'liushiyi@example.com', '河南省郑州市金水区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('952723700006780928', '张三', '29485736456', '283745632@qq.com', '广东省广州市天河区', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('952725131120082944', '五跳舞', '28372637628', 'dwqhuiod@163.com', '广东省广州市', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('952737975760846848', '囧叔的', '2938472384', '23984723@163.com', '安徽省芜湖市', NULL, NULL, 0);
INSERT INTO `customer` VALUES ('952739879849033728', '哈哈哈', '19283746234', 'fjwidj@163.com', '江西南昌', '2024-02-07', '2024-02-07', 0);
INSERT INTO `customer` VALUES ('952740103585792000', '几次都了解', '21327582313', 'fewhjiodfjio@163.com', '哈哈哈dwqhuijdiwqo11111', '2024-02-07', '2024-02-11', 0);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品ID（主键）',
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名称',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `stock` int(0) NOT NULL COMMENT '库存数量',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品描述',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` date NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '逻辑删除:0=未删除,1=已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('10csaca', '宠物背包', 199.00, 20, '便携宠物背包，透气设计，适合短途出行.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('11csa', '宠物厕所', 89.00, 60, '便携式宠物厕所，易于清理，适合室内外使用.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('12csa', '宠物饲料桶', 49.00, 80, '防潮宠物饲料桶，保持饲料新鲜.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('13csac', '宠物牙膏', 29.00, 100, '宠物专用牙膏，清新口气，保护宠物口腔健康.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('14cas', '宠物指甲剪', 19.00, 120, '安全宠物指甲剪，人性化设计，剪裁轻松.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('15cascs', '宠物雨衣', 69.00, 40, '防水宠物雨衣，反光条设计，提高户外安全性.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('16csa', '宠物护目镜', 39.00, 50, '防风沙宠物护目镜，保护宠物眼睛，适合户外活动.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('17cashrtgh', '宠物防晒衣', 59.00, 30, '透气宠物防晒衣，防止紫外线伤害.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('18csa', '宠物止吠器', 129.00, 20, '人性化宠物止吠器，温和训练，不伤害宠物.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('1cds', '宠物窝', 99.00, 50, '舒适的宠物窝，适合小型犬和猫使用，可机洗.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('22yu', '宠物耳清洁剂', 25.00, 110, '专用宠物耳清洁剂，预防耳炎.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('24kyukyu', '宠物项圈', 39.00, 140, '个性化宠物项圈，可刻字，适合各种犬种.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('25', '宠物喂食器', 149.00, 20, '智能宠物喂食器，定时定量，适合忙碌的主人.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('26yu', '宠物窝床', 199.00, 15, '舒适宠物窝床，可拆洗，适合长期使用.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('27', '宠物出行包', 129.00, 25, '多功能宠物出行包，带宠物外出时方便携带必需品.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('28ky', '宠物训练零食', 19.00, 160, '健康宠物训练零食，奖励宠物的好行为.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('29', '宠物喂水器', 59.00, 70, '防溢出宠物喂水器，保持水源清洁.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('2kuy', '猫爬架', 299.00, 30, '多层猫爬架，带有玩具和抓板，促进猫咪运动.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('30yuk', '宠物衣服', 79.00, 50, '时尚宠物衣服，适合节日或特殊场合.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('34k', '宠物降温项圈', 59.00, 30, '宠物专用降温项圈，夏季散热，预防中暑.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('35etert', '宠物防跳蚤项圈', 29.00, 70, '预防跳蚤叮咬，保护宠物健康，适合外出时使用.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('37dfsdf', '宠物尿垫', 19.00, 150, '宠物尿垫，吸水性强，方便清洁，适合室内使用.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('38jghjktyuew', '宠物摄像头', 199.00, 20, '实时监控宠物，支持双向通话，适合外出时使用.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('39', '宠物除臭剂', 45.00, 80, '有效去除宠物异味，保持家庭环境清新.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('3yw', '狗粮', 129.00, 100, '高品质犬粮，适合多种犬种，营养均衡.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('40h', '宠物太阳镜', 39.00, 50, '保护宠物眼睛，防止紫外线伤害，适合户外活动.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('42hgjm', '宠物喂食玩具', 15.00, 150, '互动式喂食玩具，增加宠物锻炼机会，适合减肥宠物.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('44luikjh', '宠物口罩', 19.00, 100, '保护宠物呼吸道，防止灰尘和花粉过敏，适合过敏体质宠物.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('45', '宠物降温扇', 69.00, 30, '夏季宠物降温扇，帮助宠物散热，增加宠物舒适度.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('46', '宠物健康体检套餐', 299.00, 10, '提供全面的宠物健康检查，及时发现和预防疾病.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('47', '宠物美容工具套装', 99.00, 20, '全套宠物美容工具，包括梳子、剪刀、刷子等，方便宠物日常护理.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('48', '宠物按摩器', 149.00, 20, '模拟人工按摩，缓解宠物肌肉疲劳，增进宠物舒适感.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('49', '宠物喂食定时器', 59.00, 30, '定时定量喂食，帮助宠物养成良好的饮食习惯.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('5', '宠物牵引绳', 59.00, 70, '耐用宠物牵引绳，可调节长度，带反光条.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('50', '宠物清洁湿巾', 19.00, 120, '便携式宠物清洁湿巾，方便随时清洁宠物，保持宠物干净卫生.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('6', '宠物零食', 25.00, 200, '多种口味的宠物零食，训练奖励的好选择.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('7', '宠物梳子', 39.00, 60, '多功能宠物梳子，适合各种毛发的狗狗和猫咪.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('8', '宠物床垫', 149.00, 40, '保暖宠物床垫，适合户外使用，易于清洁.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('9', '宠物玩具', 15.00, 300, '耐咬宠物玩具，多种形状和材质，增加宠物乐趣.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('949789001215115264', '与报如调长就', 100.00, 99, '重第四身千量深技正时七要志县查。过了军名边少小现如资委装。消达通飞查斯厂位积位装政基。义当办日不最物叫员权观结千亲向权。划东斯任以物设拉第适行根单济队做名。', NULL, NULL, 0);
INSERT INTO `product` VALUES ('949827814012485632', '积部业', 89.00, 42, '以委志道军色下之提给斯领适。反本越后专广记府技直区马着信新部业。民写住矿心白门长比华海正利问价府。利经我位里结通群极引平路单十论式消林。思反通利济现设快整书专车。候对民对油区易世美走江节亲空总。', NULL, NULL, 0);
INSERT INTO `product` VALUES ('954171614210031616', 'hjtvbfghg', 213312.00, 123, 'hnfbhn412412', '2024-02-11', '2024-02-11', 0);
INSERT INTO `product` VALUES ('gj', '宠物饮水机', 199.00, 20, '智能宠物饮水机，保持水源清洁，适合长时间使用.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('kjfdgwe', '猫粮', 119.00, 80, '精选猫粮，无谷配方，适合猫咪消化吸收.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('kuy', '宠物训练器', 49.00, 70, '多功能宠物训练器，训练宠物基本命令.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('ky', '宠物眼部清洁液', 19.00, 120, '专为宠物眼睛设计，温和清洁，预防眼部感染.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('kyuk', '宠物按摩梳', 39.00, 60, '按摩宠物毛发，促进血液循环，增进宠物舒适感.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('kyukuy', '宠物降温垫', 89.00, 25, '清凉宠物降温垫，适合夏天使用，帮助宠物降温.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('kyukyuk', '宠物护膝', 39.00, 60, '保护宠物关节，减轻运动伤害，适合关节不适的宠物.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('uykkuy', '宠物维生素', 45.00, 130, '补充宠物所需维生素，增强宠物免疫力.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('y', '宠物消毒液', 39.00, 60, '有效杀灭宠物环境中的细菌和病毒，保护宠物健康.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('yjmkyhern', '宠物凉席', 29.00, 100, '夏季宠物凉席，让宠物在炎炎夏日感到凉爽舒适.', NULL, NULL, 0);
INSERT INTO `product` VALUES ('yukyk', '宠物洗浴用品', 35.00, 90, '温和宠物洗浴用品，保护宠物皮肤.', NULL, NULL, 0);

-- ----------------------------
-- Table structure for purchase_record
-- ----------------------------
DROP TABLE IF EXISTS `purchase_record`;
CREATE TABLE `purchase_record`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '购买记录ID（主键）',
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品ID',
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户ID',
  `quantity` int(0) NULL DEFAULT NULL COMMENT '购买数量',
  `purchase_time` date NULL DEFAULT NULL COMMENT '购买时间（UTC时间）',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` date NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '逻辑删除:0=未删除,1=已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_record
-- ----------------------------
INSERT INTO `purchase_record` VALUES ('1', '1', '1', 1, '2023-01-01', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('10', '10', '10', 10, '2023-01-10', NULL, '2024-02-15', 1);
INSERT INTO `purchase_record` VALUES ('11', '11', '11', 11, '2023-01-11', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('12', '12', '12', 12, '2023-01-12', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('13', '13', '13', 13, '2023-01-13', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('14', '14', '14', 14, '2023-01-14', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('15', '15', '15', 15, '2023-01-15', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('16', '16', '16', 16, '2023-01-16', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('17', '17', '17', 17, '2023-01-17', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('18', '18', '18', 18, '2023-01-18', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('19', '19', '19', 19, '2023-01-19', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('2', '2', '2', 2, '2023-01-02', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('20', '20', '20', 20, '2023-01-20', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('21', '21', '21', 21, '2023-01-21', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('22', '22', '22', 22, '2023-01-22', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('23', '23', '23', 23, '2023-01-23', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('24', '24', '24', 24, '2023-01-24', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('25', '25', '25', 25, '2023-01-25', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('26', '26', '26', 26, '2023-01-26', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('27', '27', '27', 27, '2023-01-27', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('28', '28', '28', 28, '2023-01-28', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('29', '29', '29', 29, '2023-01-29', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('3', '3', '3', 3, '2023-01-03', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('30', '30', '30', 30, '2023-01-30', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('31', '31', '31', 31, '2023-01-31', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('32', '32', '32', 32, '2023-02-01', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('33', '33', '33', 33, '2023-02-02', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('34', '34', '34', 34, '2023-02-03', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('35', '35', '35', 35, '2023-02-04', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('36', '36', '36', 36, '2023-02-05', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('37', '37', '37', 37, '2023-02-06', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('38', '38', '38', 38, '2023-02-07', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('39', '39', '39', 39, '2023-02-08', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('4', '4', '4', 4, '2023-01-04', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('40', '40', '40', 40, '2023-02-09', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('41', '41', '41', 41, '2023-02-10', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('42', '42', '42', 42, '2023-02-11', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('43', '43', '43', 43, '2023-02-12', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('44', '44', '44', 44, '2023-02-13', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('45', '45', '45', 45, '2023-02-14', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('46', '46', '46', 46, '2023-02-15', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('47', '47', '47', 47, '2023-02-16', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('48', '48', '48', 48, '2023-02-17', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('49', '49', '49', 49, '2023-02-18', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('5', '5', '5', 5, '2023-01-05', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('50', '50', '50', 50, '2023-02-19', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('6', '6', '6', 6, '2023-01-06', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('7', '7', '7', 7, '2023-01-07', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('8', '8', '8', 8, '2023-01-08', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('9', '9', '9', 9, '2023-01-09', NULL, NULL, 0);
INSERT INTO `purchase_record` VALUES ('955564150078046208', '10csaca', '12gvfdgd', 5555, '2024-02-13', '2024-02-15', '2024-02-15', 0);
INSERT INTO `purchase_record` VALUES ('955624217397690368', '15cascs', '15sdasd', 1111, '2024-02-12', '2024-02-15', '2024-02-15', 0);

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '销售记录ID（主键）',
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品ID',
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户ID',
  `quantity` int(0) NULL DEFAULT NULL COMMENT '销售数量',
  `sale_time` datetime(0) NULL DEFAULT NULL COMMENT '销售时间',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '销售总额',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` date NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` tinyint(1) NULL DEFAULT NULL COMMENT '逻辑删除:0=未删除,1=已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('1', '1', '1', 1, '2023-01-01 12:00:00', 222.00, NULL, '2024-02-15', 0);
INSERT INTO `sale` VALUES ('10', '10', '10', 10, '2023-01-10 06:00:00', 991.00, NULL, '2024-02-15', 0);
INSERT INTO `sale` VALUES ('11', '11', '11', 11, '2023-01-11 08:00:00', 1089.00, NULL, '2024-02-15', 1);
INSERT INTO `sale` VALUES ('12', '12', '12', 12, '2023-01-12 10:00:00', 1188.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('13', '13', '13', 13, '2023-01-13 12:00:00', 1287.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('14', '14', '14', 14, '2023-01-14 14:00:00', 1386.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('15', '15', '15', 15, '2023-01-15 16:00:00', 1485.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('16', '16', '16', 16, '2023-01-16 18:00:00', 1584.00, NULL, '2024-02-15', 1);
INSERT INTO `sale` VALUES ('17', '17', '17', 17, '2023-01-17 20:00:00', 1683.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('18', '18', '18', 18, '2023-01-18 22:00:00', 1782.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('19', '19', '19', 19, '2023-01-19 00:00:00', 1881.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('2', '2', '2', 2, '2023-01-02 14:00:00', 198.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('20', '20', '20', 20, '2023-01-20 02:00:00', 1980.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('21', '21', '21', 21, '2023-01-21 04:00:00', 1980.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('22', '22', '22', 22, '2023-01-22 06:00:00', 2970.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('23', '23', '23', 23, '2023-01-23 08:00:00', 3960.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('24', '24', '24', 24, '2023-01-24 10:00:00', 4950.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('25', '25', '25', 25, '2023-01-25 12:00:00', 5940.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('26', '26', '26', 26, '2023-01-26 14:00:00', 6930.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('27', '27', '27', 27, '2023-01-27 16:00:00', 7920.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('28', '28', '28', 28, '2023-01-28 18:00:00', 8910.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('29', '29', '29', 29, '2023-01-29 20:00:00', 9900.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('3', '3', '3', 3, '2023-01-03 16:00:00', 297.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('30', '30', '30', 30, '2023-01-30 22:00:00', 10890.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('31', '31', '31', 31, '2023-01-31 00:00:00', 11880.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('32', '32', '32', 32, '2023-02-01 02:00:00', 12870.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('33', '33', '33', 33, '2023-02-02 04:00:00', 13860.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('34', '34', '34', 34, '2023-02-03 06:00:00', 14850.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('35', '35', '35', 35, '2023-02-04 08:00:00', 15840.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('36', '36', '36', 36, '2023-02-05 10:00:00', 16830.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('37', '37', '37', 37, '2023-02-06 12:00:00', 17820.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('38', '38', '38', 38, '2023-02-07 14:00:00', 18810.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('39', '39', '39', 39, '2023-02-08 16:00:00', 19800.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('4', '4', '4', 4, '2023-01-04 18:00:00', 396.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('40', '40', '40', 40, '2023-02-09 18:00:00', 20890.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('41', '41', '41', 41, '2023-02-10 20:00:00', 21880.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('42', '42', '42', 42, '2023-02-11 22:00:00', 22870.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('43', '43', '43', 43, '2023-02-12 00:00:00', 23860.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('44', '44', '44', 44, '2023-02-13 02:00:00', 24850.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('45', '45', '45', 45, '2023-02-14 04:00:00', 25840.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('46', '46', '46', 46, '2023-02-15 06:00:00', 26830.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('47', '47', '47', 47, '2023-02-16 08:00:00', 27820.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('48', '48', '48', 48, '2023-02-17 10:00:00', 28810.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('49', '49', '49', 49, '2023-02-18 12:00:00', 29800.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('5', '5', '5', 5, '2023-01-05 20:00:00', 495.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('50', '50', '50', 50, '2023-02-19 14:00:00', 30890.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('6', '6', '6', 6, '2023-01-06 22:00:00', 594.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('7', '7', '7', 7, '2023-01-07 00:00:00', 693.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('8', '8', '8', 8, '2023-01-08 02:00:00', 792.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('9', '9', '9', 9, '2023-01-09 04:00:00', 891.00, NULL, NULL, 0);
INSERT INTO `sale` VALUES ('955636983210704896', '10csaca', '11dqws', 123123, '2024-01-03 16:00:00', 111111.00, '2024-02-15', '2024-02-15', 0);

SET FOREIGN_KEY_CHECKS = 1;
