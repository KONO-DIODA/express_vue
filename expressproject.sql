/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : expressproject

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 02/03/2024 23:00:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '性别',
  `card_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '学号',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '用户类型：0普通，1会员，2svip',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '账号状态：0禁用，1正常',
  `books` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅书籍list',
  `del` int(11) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 501 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (1, 'Shao Lan', '女', '169-1703-8809', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (2, 'Lu Yunxi', '男', '3-9926-9163', 0, 0, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 1);
INSERT INTO `client` VALUES (3, 'Yam Wai Han', '女', '755-226-9987', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (4, 'Ichikawa Daichi', '男', '176-8062-1784', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (5, 'Siu Wing Sze', '女', '52-683-3708', 0, 0, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 1);
INSERT INTO `client` VALUES (6, 'Yung Chi Yuen', '男', '70-3021-5781', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (7, 'Huang Jiehong', '男', '80-5775-3747', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (8, 'Liang Lu', '女', '755-939-4159', 0, 1, '[\"三毛\",\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (9, 'Ashley Ford', '女', '74-550-9059', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (10, 'Iwasaki Itsuki', '男', '760-3787-6579', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (11, 'Marilyn Salazar', '女', '155-4121-4527', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (12, 'Ku Chi Ming', '男', '3-0436-7040', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (13, 'Ku Wai Yee', '女', '755-2554-8365', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (14, 'Carolyn Butler', '女', '90-3727-0860', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (15, 'Arimura Shino', '女', '769-8167-7986', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (16, 'Long Xiaoming', '男', '165-1734-2895', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (17, 'Fong Chi Yuen', '男', '28-669-4523', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (18, 'Steve Tran', '男', '52-593-4088', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (19, 'Mok Wai Man', '女', '28-9795-2078', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (20, 'Nakagawa Miu', '女', '158-8250-1705', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (21, 'Yoshida Daisuke', '男', '10-3641-8026', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (22, 'Lee Yun Fat', '男', '180-3593-6379', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (23, 'Zheng Xiuying', '女', '28-7815-8162', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (24, 'Zhong Anqi', '女', '147-7152-0179', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (25, 'Manuel Freeman', '男', '169-5319-6943', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (26, 'Kinoshita Ren', '女', '74-837-5792', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (27, 'Kojima Mai', '女', '90-6746-1510', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (28, 'Wong Ka Ling', '女', '80-4014-4984', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (29, 'Lee Chi Ming', '男', '760-0597-8968', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (30, 'Sheila Bennett', '女', '80-4071-5230', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (31, 'Meng Zhennan', '男', '80-2473-1543', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (32, 'Yamazaki Ayato', '男', '80-5575-2514', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (33, 'Frances Richardson', '女', '146-6795-1763', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (34, 'Ikeda Rena', '女', '70-3905-6542', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (35, 'Ogawa Nanami', '男', '193-6127-1081', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (36, 'Watanabe Kenta', '男', '52-675-7946', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (37, 'Zhang Xiaoming', '男', '760-8166-5676', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (38, 'Liao Shihan', '女', '90-2791-5200', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (39, 'Wei Zhiyuan', '男', '142-4786-0031', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (40, 'Saito Hana', '女', '131-7189-2144', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (41, 'Miyamoto Daichi', '男', '90-0525-1267', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (42, 'Leroy Rose', '男', '70-9579-9824', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (43, 'Yu Yuning', '男', '10-9713-9585', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (44, 'Ueno Tsubasa', '男', '150-3541-3850', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (45, 'Dong Jialun', '男', '28-3088-5644', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (46, 'Pan Ziyi', '男', '80-8133-0754', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (47, 'Chin Fat', '男', '142-1685-5436', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (48, 'Ma Jiehong', '男', '176-7149-8827', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (49, 'Yip Chun Yu', '男', '70-6369-9865', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (50, 'Kinoshita Akina', '女', '3-4474-2014', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (51, 'Maeda Daichi', '男', '11-471-2509', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (52, 'Jerry Ford', '男', '760-606-4668', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (53, 'Yu Jialun', '男', '160-0672-6244', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (54, 'Ichikawa Itsuki', '男', '52-027-1062', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (55, 'Miguel Vargas', '男', '80-3366-0552', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (56, 'Hayashi Hikari', '女', '165-3617-2006', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (57, 'Ota Akina', '女', '80-8046-7789', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (58, 'Carl Payne', '男', '193-2818-9345', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (59, 'Shi Zhennan', '男', '74-301-6575', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (60, 'Miu Hiu Tung', '女', '135-3169-0337', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (61, 'Frances Rodriguez', '女', '760-427-7957', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (62, 'Hui Wai Yee', '女', '52-707-6678', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (63, 'Rose Phillips', '女', '10-639-6039', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (64, 'Dorothy Smith', '女', '10-5803-9976', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (65, 'Teresa Barnes', '女', '66-434-3875', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (66, 'Tse Ka Fai', '男', '80-1348-2599', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (67, 'Mo Chi Yuen', '男', '187-8700-2716', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (68, 'Li Xiaoming', '男', '3-1661-8345', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (69, 'Koyama Rin', '女', '769-3973-2105', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (70, 'Kathleen Martin', '女', '80-6420-9518', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (71, 'Iwasaki Hikari', '女', '769-0678-0777', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (72, 'Nakamori Hazuki', '女', '3-6356-9321', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (73, 'Long Jiehong', '男', '70-0724-0776', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (74, 'Tao Ziyi', '男', '170-9772-1007', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (75, 'Zheng Rui', '男', '142-6133-1169', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (76, 'Yau Suk Yee', '女', '70-2173-6915', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (77, 'Chic Fu Shing', '男', '175-8764-2039', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (78, 'Hou Yuning', '男', '52-713-3802', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (79, 'Lau Wing Sze', '女', '143-1997-8093', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (80, 'Liang Lan', '女', '3-1948-5708', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (81, 'Marie Ryan', '女', '769-253-8652', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (82, 'Han Yuning', '男', '80-7710-5749', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (83, 'Don Miller', '男', '66-335-5610', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (84, 'Au Ling Ling', '女', '80-5171-0676', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (85, 'Wang Rui', '男', '90-1252-6835', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (86, 'Rodney Munoz', '男', '70-2465-6997', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (87, 'Randall Gray', '男', '141-9543-0036', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (88, 'Shimada Sara', '女', '21-639-2051', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (89, 'Nomura Kenta', '男', '168-1770-4803', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (90, 'Miura Akina', '女', '755-923-2030', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (91, 'Cho Siu Wai', '女', '66-956-4328', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (92, 'Mo Tin Lok', '男', '11-133-1615', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (93, 'Ota Shino', '女', '90-8795-6990', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (94, 'Shao Xiuying', '女', '66-755-5880', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (95, 'Amanda Smith', '女', '21-842-1169', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (96, 'Fujiwara Sara', '女', '90-7228-5159', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (97, 'Tse Chi Ming', '男', '52-856-9328', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (98, 'Chiang Chun Yu', '男', '52-082-2691', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (99, 'Brandon Johnson', '男', '166-8495-8328', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (100, 'Murata Rin', '女', '3-4488-0124', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (101, 'Mak Ka Ming', '男', '90-1699-2141', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (102, 'Ishida Mio', '女', '150-7167-8802', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (103, 'Lam Kwok Ming', '男', '70-1040-7244', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (104, 'Ng Wai Yee', '女', '138-2373-8679', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (105, 'Carol Ross', '女', '140-5432-7393', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (106, 'Shimada Hina', '女', '755-187-7915', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (107, 'Loui Kwok Ming', '男', '80-8042-4182', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (108, 'Xia Anqi', '女', '10-041-0681', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (109, 'Rita Boyd', '女', '760-934-7044', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (110, 'Kikuchi Shino', '女', '144-3084-1708', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (111, 'Meng Yu Ling', '女', '20-2568-1787', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (112, 'Yung Wai San', '女', '52-067-4569', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (113, 'Yan Anqi', '女', '21-526-3203', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (114, 'Siu Cho Yee', '女', '760-452-6428', 0, 0, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (115, 'Chan Lai Yan', '女', '80-5656-8003', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (116, 'Nakano Seiko', '女', '760-1143-7075', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (117, 'Gu Shihan', '女', '143-8129-2193', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (118, 'Miu Wai San', '女', '185-5665-0123', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (119, 'Otsuka Mai', '女', '11-243-3001', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (120, 'Travis Henry', '男', '179-7366-7618', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (121, 'Cho Tsz Ching', '女', '192-5989-5442', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (122, 'Chang Wing Kuen', '男', '66-589-6385', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (123, 'Randy Wagner', '男', '52-350-0531', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (124, 'Su Xiuying', '女', '66-479-4381', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (125, 'Judy Robertson', '女', '52-019-6695', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (126, 'Dennis Nelson', '男', '188-5346-1519', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (127, 'Brian Green', '男', '66-925-7958', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (128, 'Melissa West', '女', '20-333-6793', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (129, 'Ishii Seiko', '女', '52-572-9714', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (130, 'Nakano Aoi', '女', '74-297-4225', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (131, 'Liu Xiuying', '女', '28-9361-1927', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (132, 'Yu Xiuying', '女', '760-246-2503', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (133, 'Mao Jiehong', '男', '142-6769-4148', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (134, 'Fang Zhiyuan', '男', '194-6077-0527', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (135, 'Wei Anqi', '女', '80-2572-2553', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (136, 'Jia Ziyi', '男', '20-9997-7537', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (137, 'Nakamori Yuna', '女', '20-328-5671', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (138, 'Jeff Sanders', '男', '3-1917-0138', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (139, 'Zou Lu', '女', '167-2934-8502', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (140, 'Christina Diaz', '女', '181-7792-3750', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (141, 'Sugiyama Momoe', '女', '190-3069-2267', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (142, 'Liu Zhennan', '男', '80-9663-3136', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (143, 'Alice Kim', '女', '80-2493-1048', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (144, 'Tam Sum Wing', '女', '74-211-9368', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (145, 'Yamada Momoka', '女', '760-685-8368', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (146, 'Kwan Wing Kuen', '男', '10-5965-6093', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (147, 'Pak Chi Yuen', '男', '169-4251-5916', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (148, 'Lu Zhiyuan', '男', '70-7287-1423', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (149, 'Wendy Sullivan', '女', '70-9904-6903', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (150, 'Peng Yuning', '男', '66-015-1684', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (151, 'John Soto', '男', '196-8327-7532', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (152, 'Ono Kasumi', '男', '70-4930-2686', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (153, 'Harada Itsuki', '男', '137-9562-1401', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (154, 'Han Anqi', '女', '74-763-1781', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (155, 'Shi Lu', '女', '66-421-5351', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (156, 'Harada Tsubasa', '男', '198-5156-5989', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (157, 'Edna Spencer', '女', '134-8608-7812', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (158, 'Tam Kwok Yin', '男', '760-986-6475', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (159, 'Ando Eita', '女', '146-4486-1902', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (160, 'Angela Stone', '女', '90-1118-8218', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (161, 'Alice Woods', '女', '10-867-4799', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (162, 'Su Xiaoming', '男', '755-0852-5982', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (163, 'Ito Ren', '女', '3-3605-0595', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (164, 'Tsui Ka Keung', '男', '74-876-6640', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (165, 'Arai Yuna', '女', '760-258-4635', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (166, 'Diane Gonzalez', '女', '760-527-4630', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (167, 'Jamie Vasquez', '女', '90-0384-4564', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (168, 'Sarah Kim', '女', '80-1358-4271', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (169, 'Kondo Riku', '男', '3-9429-7795', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (170, 'Jiang Xiaoming', '男', '10-718-0324', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (171, 'Liao Ming', '男', '3-5791-4104', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (172, 'Manuel Rose', '男', '760-6816-4398', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (173, 'Kwong Suk Yee', '女', '20-0902-3734', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (174, 'Saito Rin', '女', '755-2759-2778', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (175, 'Xiao Yunxi', '男', '66-541-9008', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (176, 'Man Sze Yu', '女', '70-6023-6471', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (177, 'Wong Ting Fung', '男', '70-2879-7415', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (178, 'Phillip Bennett', '男', '20-1111-8448', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (179, 'Jiang Lan', '女', '90-0746-0858', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (180, 'Han Yu Ling', '女', '74-048-9941', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (181, 'Kwong Wai Han', '女', '149-8524-6381', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (182, 'Tam Ting Fung', '男', '10-650-0396', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (183, 'Yamamoto Aoshi', '男', '174-2162-6009', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (184, 'Cheryl Rose', '女', '70-6688-5293', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (185, 'Otsuka Itsuki', '男', '769-1679-5346', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (186, 'Takagi Rena', '女', '80-8734-2918', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (187, 'Yamada Tsubasa', '男', '70-2763-6871', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (188, 'Gao Rui', '男', '3-3938-1313', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (189, 'Uchida Daichi', '男', '80-4749-9257', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (190, 'Kong Fu Shing', '男', '769-9350-0633', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (191, 'Tamura Momoe', '女', '187-3736-5339', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (192, 'Tang Xiuying', '女', '90-1237-2691', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (193, 'Russell Black', '男', '66-317-6774', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (194, 'Ma On Na', '女', '187-7988-4337', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (195, 'Mori Aoi', '女', '90-9439-7997', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (196, 'Rhonda Boyd', '女', '760-1500-9727', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (197, 'Hirano Ayano', '女', '74-089-4671', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (198, 'Masuda Yuto', '男', '70-9418-9979', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (199, 'Rita Mendez', '女', '90-6516-8743', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (200, 'Hou Shihan', '女', '133-6146-4769', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (201, 'Okamoto Misaki', '女', '90-9189-1973', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (202, 'Chu Ho Yin', '男', '52-240-8062', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (203, 'Okada Momoka', '女', '80-9998-1198', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (204, 'Han Tin Lok', '男', '66-100-7015', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (205, 'Yan Rui', '男', '66-811-6978', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (206, 'Lo Kar Yan', '女', '90-9291-6951', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (207, 'Ikeda Kasumi', '男', '70-0055-2935', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (208, 'Jeremy Reed', '男', '193-8826-1359', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (209, 'Ueno Hikari', '女', '20-463-3277', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (210, 'Patrick Medina', '男', '80-3848-1237', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (211, 'Kwan Ka Ming', '男', '179-7668-9481', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (212, 'Pan Xiuying', '女', '74-157-7792', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (213, 'Peng Lu', '女', '20-8626-5263', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (214, 'Tang Wai Man', '女', '131-1397-4074', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (215, 'Charlotte Burns', '女', '131-2642-2130', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (216, 'Kono Tsubasa', '男', '90-8449-2295', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (217, 'Xue Anqi', '女', '70-6530-0699', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (218, 'Steven Bell', '男', '70-3622-5368', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (219, 'Catherine Harris', '女', '162-1072-1331', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (220, 'Mok Chi Ming', '男', '10-104-0311', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (221, 'Katherine Nguyen', '女', '11-235-9022', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (222, 'Han Kwok Wing', '男', '146-8811-2118', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (223, 'Ng Chiu Wai', '男', '66-095-7077', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (224, 'Ishii Mio', '女', '74-275-2727', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (225, 'Li Yunxi', '男', '28-724-4580', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (226, 'Robin Hunt', '女', '70-0019-1005', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (227, 'Maeda Hazuki', '女', '162-8934-3453', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (228, 'Kimura Hikaru', '女', '144-3826-5379', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (229, 'Michael Cooper', '男', '70-6309-0954', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (230, 'Ma Wai Man', '女', '66-536-4556', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (231, 'Nishimura Rena', '女', '153-7897-7345', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (232, 'Lam Ka Ming', '男', '20-7474-6360', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (233, 'Robin Wilson', '女', '143-3033-7924', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (234, 'Tsui Tak Wah', '男', '760-922-6519', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (235, 'Ralph Flores', '男', '70-7661-9481', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (236, 'Taniguchi Rena', '女', '90-8374-5682', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (237, 'Nakamura Hana', '女', '74-905-8546', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (238, 'Xiong Ziyi', '男', '760-060-4403', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (239, 'Saito Hana', '女', '90-5020-6325', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (240, 'Tang Yuning', '男', '80-8217-2673', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (241, 'Sugiyama Sara', '女', '70-3026-9560', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (242, 'Fong Hiu Tung', '女', '181-1161-2370', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (243, 'Jessica Scott', '女', '80-0051-5608', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (244, 'Wei Jialun', '男', '11-958-3481', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (245, 'Iwasaki Yota', '男', '90-2357-5436', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (246, 'David Grant', '男', '70-9693-9431', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (247, 'Ito Momoka', '女', '10-048-1389', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (248, 'Bonnie Evans', '女', '70-8686-6666', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (249, 'Gu Xiaoming', '男', '80-8776-5128', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (250, 'Ng Kwok Wing', '男', '52-512-2519', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (251, 'Antonio Ferguson', '男', '52-325-0016', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (252, 'Yokoyama Yota', '男', '187-8038-2386', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (253, 'Elizabeth Henderson', '女', '66-495-0545', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (254, 'Kao Chi Yuen', '男', '134-7230-4974', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (255, 'Jeff Romero', '男', '755-7601-6168', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (256, 'Peter Perry', '男', '90-5232-7679', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (257, 'Jack Harrison', '男', '155-4762-3988', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (258, 'Zhang Zhennan', '男', '80-9067-1452', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (259, 'Shi Xiaoming', '男', '11-259-5601', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (260, 'He Ziyi', '男', '755-0899-6179', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (261, 'Scott Peterson', '男', '21-871-5133', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (262, 'Cheng Zhennan', '男', '755-883-5833', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (263, 'Ono Rin', '女', '80-4102-1217', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (264, 'Yip Tsz Ching', '女', '70-7287-5808', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (265, 'Marcus Edwards', '男', '11-080-0905', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (266, 'Zhu Xiuying', '女', '189-2627-0995', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (267, 'Wong Chi Yuen', '男', '80-5745-6768', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (268, 'Zeng Rui', '男', '66-945-9283', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (269, 'Yu Yunxi', '男', '154-6869-1215', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (270, 'Takeda Riku', '男', '755-280-8401', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (271, 'Norman James', '男', '28-2087-4010', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (272, 'Kimura Momoe', '女', '190-0365-5618', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (273, 'Yamada Seiko', '女', '90-3429-4133', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (274, 'Xu Xiuying', '女', '90-0905-8768', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (275, 'Pang Ling Ling', '女', '52-202-7164', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (276, 'Choi Wing Suen', '女', '90-3322-6513', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (277, 'Choi On Na', '女', '74-210-5036', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (278, 'Qin Jialun', '男', '80-2018-1468', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (279, 'Zhang Xiaoming', '男', '10-349-3062', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (280, 'Harold Webb', '男', '139-7405-9638', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (281, 'Amanda King', '女', '162-9299-2987', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (282, 'Dai Zitao', '男', '80-6602-6243', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (283, 'Kwok Ho Yin', '男', '149-5180-0888', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (284, 'Shen Anqi', '女', '28-1849-7263', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (285, 'Jacob Hayes', '男', '154-4009-2350', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (286, 'Tracy Sullivan', '女', '70-4038-9637', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (287, 'Fukuda Aoshi', '男', '152-6465-5721', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (288, 'Rachel Crawford', '女', '755-140-9867', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (289, 'Juan Alvarez', '男', '74-013-2730', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (290, 'Mary Mendez', '女', '90-8291-1872', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (291, 'Yoshida Kazuma', '男', '187-7567-8132', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (292, 'Sato Aoshi', '男', '11-170-0849', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (293, 'Cheng Zitao', '男', '769-5278-8175', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (294, 'Lai Kwok Kuen', '男', '90-0655-0467', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (295, 'Melvin Rogers', '男', '52-244-5449', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (296, 'Fan Sau Man', '女', '151-1790-1770', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (297, 'Janet Rice', '女', '66-467-9629', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (298, 'So Chung Yin', '男', '80-9603-0628', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (299, 'Eric Graham', '男', '74-793-6051', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (300, 'Mori Sara', '女', '52-864-1664', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (301, 'Xu Yunxi', '男', '188-5386-6513', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (302, 'Vincent Powell', '男', '193-7984-6123', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (303, 'Tang Zhiyuan', '男', '74-597-0262', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (304, 'Hsuan Wai Man', '女', '11-712-9191', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (305, 'Wong Hui Mei', '女', '80-7784-6367', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (306, 'Pan Zitao', '男', '74-228-8675', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (307, 'Fujii Misaki', '女', '20-3967-4933', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (308, 'Su Yunxi', '男', '755-640-5305', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (309, 'Antonio Ward', '男', '182-0891-4358', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (310, 'Koo Chi Yuen', '男', '10-996-7326', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (311, 'Xu Xiuying', '女', '52-308-8557', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (312, 'Wong Hok Yau', '男', '66-831-8169', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (313, 'Margaret Henry', '女', '70-8076-1691', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (314, 'Karen Lewis', '女', '11-982-0436', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (315, 'Shimizu Momoka', '女', '156-7071-0716', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (316, 'Hirano Hikaru', '女', '3-5960-8047', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (317, 'Yu Xiuying', '女', '90-0120-7907', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (318, 'Mo Jiehong', '男', '20-9677-1632', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (319, 'Sara Olson', '女', '74-879-3720', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (320, 'Ren Ziyi', '男', '760-3537-2138', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (321, 'Shimizu Ren', '女', '146-3821-7728', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (322, 'Nakayama Ren', '女', '52-590-8781', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (323, 'Ng Chi Ming', '男', '52-715-2821', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (324, 'Sheila Powell', '女', '52-200-5774', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (325, 'Scott Morales', '男', '155-6573-6812', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (326, 'Shi Xiuying', '女', '52-309-3228', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (327, 'Sakurai Hina', '女', '135-4761-1893', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (328, 'Ito Ryota', '男', '90-8826-6779', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (329, 'Sasaki Aoshi', '男', '176-3863-3461', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (330, 'Nakagawa Tsubasa', '男', '169-5371-6062', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (331, 'Yin Sum Wing', '女', '760-358-8210', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (332, 'Jiang Zhiyuan', '男', '52-973-5085', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (333, 'Fan Chi Yuen', '男', '66-209-0421', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (334, 'Connie Clark', '女', '161-5184-6573', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (335, 'Choi Wing Fat', '男', '142-5602-9645', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (336, 'Wei Rui', '男', '152-2269-9843', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (337, 'Raymond Hernandez', '男', '90-2250-6024', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (338, 'Saito Yuna', '女', '74-391-2170', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (339, 'Sean Thomas', '男', '80-2290-8521', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (340, 'Yam Ka Fai', '男', '21-707-9513', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (341, 'Edith Gardner', '女', '70-8764-3885', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (342, 'Yeung Wing Fat', '男', '90-0516-3766', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (343, 'Ito Takuya', '男', '183-0066-5349', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (344, 'Ying Ka Man', '男', '10-5198-1266', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (345, 'Terry Price', '男', '160-9453-8066', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (346, 'Yan Rui', '男', '167-3258-0383', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (347, 'Fan Yuning', '男', '21-5785-3473', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (348, 'Dai Yuning', '男', '760-483-5312', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (349, 'Susan Warren', '女', '139-7154-4325', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (350, 'Jiang Zhiyuan', '男', '149-2267-1628', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (351, 'Yamazaki Aoi', '女', '11-642-3391', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (352, 'Hui Chi Ming', '男', '11-340-4454', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (353, 'Yue Ka Ling', '女', '90-9240-6391', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (354, 'Roy Long', '男', '66-971-0457', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (355, 'Aoki Eita', '女', '70-6464-2402', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (356, 'Ishida Momoka', '女', '11-028-2330', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (357, 'Lu Ziyi', '男', '66-887-1324', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (358, 'Hui Ka Man', '男', '70-5252-1225', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (359, 'Du Anqi', '女', '74-071-8232', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (360, 'Takeuchi Tsubasa', '男', '74-769-9949', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (361, 'Wayne Hill', '男', '66-680-8452', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (362, 'Feng Anqi', '女', '10-370-6526', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (363, 'Leslie Martin', '女', '147-1478-9137', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (364, 'Andrew Warren', '男', '70-5021-6879', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (365, 'Ichikawa Seiko', '女', '28-994-6803', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (366, 'Lu Zhennan', '男', '20-0355-7523', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (367, 'Russell Tucker', '男', '21-9583-7044', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (368, 'Che Cho Yee', '女', '11-834-6908', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (369, 'Sakamoto Kenta', '男', '755-9073-8790', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (370, 'So Cho Yee', '女', '154-5320-5926', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (371, 'Richard Payne', '男', '66-678-8660', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (372, 'Arthur Hamilton', '男', '90-0516-1196', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (373, 'Fang Lu', '女', '70-6288-6061', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (374, 'Mary Moore', '女', '90-1313-0148', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (375, 'Yamazaki Seiko', '女', '137-0694-3303', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (376, 'Emily Martinez', '女', '760-4673-7478', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (377, 'Sato Momoe', '女', '20-030-6155', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (378, 'Ku Wing Kuen', '男', '70-2250-4856', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (379, 'Dawn Long', '女', '20-5043-0416', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (380, 'Tsang Ka Man', '男', '52-094-6117', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (381, 'Xu Xiaoming', '男', '179-6717-8628', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (382, 'Yamashita Hikaru', '女', '28-224-7521', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (383, 'Suzuki Hazuki', '女', '52-881-8617', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (384, 'He Xiuying', '女', '90-0495-6055', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (385, 'Abe Riku', '男', '173-3676-1826', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (386, 'Kwan Tak Wah', '男', '760-615-0387', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (387, 'Brian Hayes', '男', '159-0035-6613', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (388, 'Zeng Zhennan', '男', '186-2208-3719', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (389, 'Ellen Burns', '女', '139-1457-5260', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (390, 'Harada Momoe', '女', '147-0342-3592', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (391, 'Jose Reed', '男', '21-9576-1854', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (392, 'Kono Mitsuki', '女', '769-7753-9841', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (393, 'Hsuan Hui Mei', '女', '161-0453-4231', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (394, 'Fong Lai Yan', '女', '755-3279-9520', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (395, 'Virginia Mendoza', '女', '74-845-1006', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (396, 'Katherine Palmer', '女', '28-4884-6921', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (397, 'Alice Collins', '女', '193-5674-9693', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (398, 'Philip Smith', '男', '90-6008-4387', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (399, 'Sakamoto Yota', '男', '90-7136-8855', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (400, 'Hui Wai Han', '女', '20-4727-2602', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (401, 'Yeow Suk Yee', '女', '74-629-8213', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (402, 'Luis Cook', '男', '66-002-8721', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (403, 'Ichikawa Mitsuki', '女', '80-9032-7616', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (404, 'Wu Ming Sze', '女', '74-978-5303', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (405, 'Judith Mendoza', '女', '10-8895-4319', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (406, 'Jiang Rui', '男', '769-402-2229', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (407, 'Gong Xiaoming', '男', '28-329-9848', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (408, 'Hsuan Kar Yan', '女', '3-0638-3292', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (409, 'Herbert Kelly', '男', '20-747-8513', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (410, 'Fujii Seiko', '女', '144-1463-2567', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (411, 'Qiu Zitao', '男', '90-2725-2754', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (412, 'Kathy Richardson', '女', '10-872-7123', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (413, 'Fong Wai Lam', '女', '70-1474-5755', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (414, 'Mo Ka Ming', '男', '178-9610-6124', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (415, 'Chris Campbell', '男', '90-3173-2455', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (416, 'Miyamoto Shino', '女', '21-847-7020', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (417, 'Gu Lan', '女', '141-6199-0424', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (418, 'Leung Ming', '男', '182-8760-4840', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (419, 'Matsumoto Yota', '男', '151-3486-4077', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (420, 'Sherry Rice', '女', '150-3453-0047', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (421, 'Song Lu', '女', '80-6667-5696', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (422, 'Peter Hawkins', '男', '180-0329-8634', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (423, 'To Wing Sze', '女', '3-2408-6485', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (424, 'Shi Yunxi', '男', '760-050-9830', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (425, 'Curtis Henderson', '男', '90-6355-7597', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (426, 'Nakamori Aoi', '女', '70-5524-6863', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (427, 'Pamela Vasquez', '女', '164-3820-0473', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (428, 'Wan Lai Yan', '女', '90-7135-4191', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (429, 'Gerald Howard', '男', '21-737-4651', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (430, 'Ma Yuning', '男', '70-1212-0513', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (431, 'Jean Gonzalez', '女', '192-3023-1957', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (432, 'Fujiwara Miu', '女', '90-8044-7571', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (433, 'Carol Edwards', '女', '161-9741-6536', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (434, 'Yung Wing Suen', '女', '154-4886-3576', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (435, 'Han Zhennan', '男', '70-4220-6143', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (436, 'Edna Perry', '女', '194-9564-4382', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (437, 'Virginia Castillo', '女', '52-466-7419', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (438, 'Ogawa Rena', '女', '28-526-4778', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (439, 'Joshua Spencer', '男', '197-3113-6105', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (440, 'Arai Yuito', '男', '10-0618-1292', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (441, 'Gong Xiuying', '女', '70-0966-4105', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (442, 'Allen Morris', '男', '194-0642-6789', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (443, 'Glenn Smith', '男', '70-3531-1360', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (444, 'Wang Jiehong', '男', '10-4630-3735', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (445, 'Bonnie Harrison', '女', '769-465-3088', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (446, 'Yin Chi Ming', '男', '191-9076-3940', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (447, 'Annie White', '女', '80-6543-6603', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (448, 'Larry Ferguson', '男', '755-855-4420', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (449, 'Bryan Gonzales', '男', '165-6653-7019', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (450, 'Suzuki Mai', '女', '184-1110-8239', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (451, 'Mak Fat', '男', '760-1471-4491', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (452, 'Mak Kar Yan', '女', '175-8594-6302', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (453, 'Qin Zhiyuan', '男', '3-8026-5398', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (454, 'Jiang Zhennan', '男', '3-9758-0291', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (455, 'Chiba Nanami', '男', '80-3611-4578', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (456, 'Chung Cho Yee', '女', '11-824-3800', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (457, 'Tsui Kwok Yin', '男', '20-4160-3989', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (458, 'Yin Wai San', '女', '193-3949-4109', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (459, 'Jeffery Richardson', '男', '70-9756-4890', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (460, 'Uchida Yuito', '男', '90-2798-3287', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (461, 'Tam Wai Lam', '女', '66-547-8124', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (462, 'Yamada Daichi', '男', '28-390-8408', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (463, 'Kimberly Reed', '女', '52-753-5727', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (464, 'Nishimura Aoshi', '男', '20-844-3541', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (465, 'Francisco Hall', '男', '90-1439-2818', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (466, 'Victoria Stephens', '女', '70-5112-5549', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (467, 'Che Sum Wing', '女', '142-8839-7464', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (468, 'Manuel Hunt', '男', '70-0562-9193', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (469, 'So Ho Yin', '男', '74-883-5589', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (470, 'Cheung Ka Fai', '男', '21-692-2112', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (471, 'Hayashi Eita', '女', '11-358-5564', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (472, 'Heather Sanders', '女', '165-4970-9193', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (473, 'Inoue Itsuki', '男', '74-032-7288', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (474, 'Xia Zhennan', '男', '80-2691-4518', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (475, 'Russell Webb', '男', '20-1017-4716', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (476, 'Su Yuning', '男', '165-1699-7107', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (477, 'So Wai Man', '女', '170-4636-6652', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (478, 'Chang Xiuying', '女', '769-5089-3893', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (479, 'Ronald Coleman', '男', '52-002-8871', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (480, 'Chang Ka Man', '男', '182-9814-2702', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (481, 'Kaneko Momoka', '女', '66-916-6802', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (482, 'Leslie Ford', '女', '80-6786-2296', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (483, 'Don Allen', '男', '90-5345-9871', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (484, 'Hashimoto Mitsuki', '女', '80-2582-1843', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (485, 'Mao Rui', '男', '769-1932-6742', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (486, 'Wan Chi Ming', '男', '11-238-8602', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (487, 'Lee On Kay', '女', '21-3320-8900', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (488, 'Nakayama Misaki', '女', '90-1876-8981', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (489, 'Fan Ling Ling', '女', '70-1269-1989', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (490, 'Saito Momoe', '女', '80-3178-6261', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (491, 'Chiang Ka Fai', '男', '80-8518-6827', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (492, 'Wong Sum Wing', '女', '10-8391-8383', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (493, 'Sato Itsuki', '男', '28-017-3758', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (494, 'Tanaka Sara', '女', '21-9317-9508', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (495, 'Fang Shihan', '女', '70-7676-7833', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (496, 'Han Xiuying', '女', '74-818-6253', 2, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (497, 'Sakai Aoi', '女', '198-1232-1424', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (498, 'Tao Tak Wah', '男', '195-8902-7753', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (499, 'Nishimura Aoshi', '男', '134-0797-0105', 1, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);
INSERT INTO `client` VALUES (500, 'Dai Siu Wai', '女', '52-981-3141', 0, 1, '[\"三体\",\"故乡\",\"鲁滨逊漂流记\"]', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `pwd` varchar(124) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `head_img` varchar(524) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `power` int(11) NOT NULL DEFAULT 0 COMMENT '权限：0员工1老板',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态：0禁用1启用',
  `del` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除：1是0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '大钊', '$2a$10$DwVyMUdy6mX23U2pzcavP.mMX54O/v8f8m31acREEOtOajMzf0cOe', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/18.jpeg', 0, 0, 1);
INSERT INTO `user` VALUES (2, '小D', '$2a$10$7m9Mq5vE7fm4N94wLUxh2OCul8vFMgrDvzaebYJP2.ld3oxMQqEvW', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/12.jpeg', 0, 1, 0);
INSERT INTO `user` VALUES (3, '老王', '$2a$10$iC9SBD/ogqMnHiZBPDMsB.iUTlYBB6UO97AHpw2FNELm0itwSoCQ2', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/15.jpeg', 0, 1, 0);
INSERT INTO `user` VALUES (4, '冰冰', '$2a$10$jacNuEUM9dtT5V/B8Ef8f.65cCTZUOwGJcmNGEf03jHgPn9d93EF.', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/13.jpeg', 0, 1, 0);
INSERT INTO `user` VALUES (5, 'anna', '$2a$10$ltCNLCUZnLRTslMVcBxagef4LGbQQNuzSxx1LPg5Ia2y0EbU.DbrK', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/14.jpeg', 0, 1, 0);
INSERT INTO `user` VALUES (6, '张三', '$2a$10$vbzFnNJefweElI.FdYpBDOD2WaxRKM.Ikzgb2cE227fudIlicprIm', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/18.jpeg', 0, 1, 0);
INSERT INTO `user` VALUES (7, '李四', '$2a$10$uUbk7k3oJLhdVCdyb2Iedu3.N1zjmjhBh6SfMB8ZkEvSSaLNAxxfy', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/19.jpeg', 0, 1, 0);
INSERT INTO `user` VALUES (9, 'superb', '$2a$10$SSqwkZHf3bJWqGajsCYQM.70DVXqmaGby2XxGTtFM6gQbQu.DfOQm', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/14.jpeg', 0, 1, 0);
INSERT INTO `user` VALUES (10, 'admin', '$2a$10$A3E.MXSVxHy0SxnOwdDhEe5x8cHXXXO4/dLHdgrU7sRYYNqpammc.', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/10.jpeg', 1, 1, 0);
INSERT INTO `user` VALUES (11, 'ggbond', '$2a$10$UoD8u4LUNqxCxm49IVEWieO/GbzbvYPMlsiB6dqbj88N4zYhSIOHa', 'https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/default/head_img/18.jpeg', 0, 1, 0);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `title` varchar(524) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频标题',
  `course_img` varchar(524) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面图',
  `price` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格,分',
  `point` double(11, 2) NULL DEFAULT 8.70 COMMENT '默认8.7，最高10分',
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程分类',
  `del` int(11) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, '22年新版【前端高级工程师】面试专题第二季', 'https://file.xdclass.net/video/2022/77-QD/cover.jpeg', '109', 9.80, 'front', 1);
INSERT INTO `video` VALUES (2, '22年新版-零基础玩转vue3+开发仿美团外卖项目vue视频', 'https://file.xdclass.net/video/2022/75-Vue3/cover1.jpeg', '99', 9.50, 'front', 1);
INSERT INTO `video` VALUES (3, '新版webpack5丨带你玩转时下最流行的构建工具', 'https://file.xdclass.net/video/2022/76-webpack5/cover.jpeg', '59', 9.30, 'front', 0);
INSERT INTO `video` VALUES (4, '22年新版-玩转Git零基础到进阶实战 git视频急速入门', 'https://file.xdclass.net/video/2021/74-git/WechatIMG3026.jpeg', '39', 9.20, 'front', 0);
INSERT INTO `video` VALUES (5, '22年新版-玩转ECMAScript6零基础到进阶实战es6视频', 'https://file.xdclass.net/video/2021/73-ES6/cover.jpeg', '49', 9.40, 'front', 0);
INSERT INTO `video` VALUES (6, '22年新-Javascript视频前端零基础到项目实战/js视频', 'https://file.xdclass.net/video/2021/70-Javascript/cover.jpeg', '29', 9.20, 'front', 0);
INSERT INTO `video` VALUES (7, '22年新版-玩转html+css前端零基础到项目实战', 'https://file.xdclass.net/video/2021/69-HTML%2BCSS/cover.jpeg', '29', 9.40, 'front', 0);
INSERT INTO `video` VALUES (8, '微服务架构-海量数据商用短链平台项目大课【预售特价中】', 'https://file.xdclass.net/video/2021/71-HLSJCL/cover.jpeg', '3699', 9.90, 'back', 0);
INSERT INTO `video` VALUES (9, '工业级PaaS云平台+SpringCloudAlibaba 综合项目实战', 'https://file.xdclass.net/video/2022/62-PaaS/cover.jpeg', '1699', 9.90, 'back', 0);
INSERT INTO `video` VALUES (10, '22年新版-架构师系列-新版ShardingJDBC分库分表mysql数据库实战', 'https://file.xdclass.net/video/2022/72-ShardingJDBC/cover.jpeg', '129', 9.90, 'back', 0);
INSERT INTO `video` VALUES (11, '小滴课堂全栈/后端高级工程师面试专题第一季', 'https://file.xdclass.net/video/2020/%E9%9D%A2%E8%AF%95%E4%B8%93%E9%A2%98/gw-ms.png', '158', 9.90, 'back', 0);
INSERT INTO `video` VALUES (12, '高级mysql第二季视频教程/高可用集群/springboot2.5分库分表', 'https://file.xdclass.net/video/2021/68-MySQL/cover.jpeg', '189', 9.90, 'back', 0);
INSERT INTO `video` VALUES (13, '三天掌握 Kafka 消息队列 小白到专家之路-大数据教程1', 'https://file.xdclass.net/video/2021/65-kafka/xzt.png', '98', 9.90, 'back', 1);
INSERT INTO `video` VALUES (14, '小白到专家-分布式缓存Redis6.X+高可用集群', 'https://file.xdclass.net/video/2021/64-redis6/cover.jpeg', '89', 9.90, 'back', 0);
INSERT INTO `video` VALUES (15, 'Node.js教程零基础入门到项目实战前端视频教程', 'https://file.xdclass.net/video/2021/2-zt/47.jpeg', '99', 9.90, 'all', 0);
INSERT INTO `video` VALUES (16, '小滴课堂超级会员全栈课程免费看', 'https://file.xdclass.net/video/2022/banner/03.jpeg', '1699', 9.90, 'all', 0);
INSERT INTO `video` VALUES (17, 'ssm新版SpringBoot2.3/spring5/mybatis3', 'https://file.xdclass.net/video/2020/SSM/zt-ssm.png', '68', 9.90, 'back', 0);
INSERT INTO `video` VALUES (18, '玩转新版高性能RabbitMQ容器化分布式集群实战', 'https://file.xdclass.net/video/2021/61-RabbitMq/zt-rabbitmq.jpeg', '79', 9.20, 'back', 0);

SET FOREIGN_KEY_CHECKS = 1;
