/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : address

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-13 21:21:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gnqwbwwcn7x0m5jlt4158dass` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('102', 'asdsadasd@222.com', 'dsadsadsadsa', 'dsadsadsa');
INSERT INTO `contact` VALUES ('101', 'test@test.com', 'test', 'test');
INSERT INTO `contact` VALUES ('3', 'contact2@email.com', 'firstName2', 'lastName2');
INSERT INTO `contact` VALUES ('4', 'contact3@email.com', 'firstName3', 'lastName3');
INSERT INTO `contact` VALUES ('5', 'contact4@email.com', 'firstName4', 'lastName4');
INSERT INTO `contact` VALUES ('6', 'contact5@email.com', 'firstName5', 'lastName5');
INSERT INTO `contact` VALUES ('7', 'contact6@email.com', 'firstName6', 'lastName6');
INSERT INTO `contact` VALUES ('8', 'contact7@email.com', 'firstName7', 'lastName7');
INSERT INTO `contact` VALUES ('9', 'contact8@email.com', 'firstName8', 'lastName8');
INSERT INTO `contact` VALUES ('10', 'contact9@email.com', 'firstName9', 'lastName9');
INSERT INTO `contact` VALUES ('11', 'contact10@email.com', 'firstName10', 'lastName10');
INSERT INTO `contact` VALUES ('12', 'contact11@email.com', 'firstName11', 'lastName11');
INSERT INTO `contact` VALUES ('13', 'contact12@email.com', 'firstName12', 'lastName12');
INSERT INTO `contact` VALUES ('14', 'contact13@email.com', 'firstName13', 'lastName13');
INSERT INTO `contact` VALUES ('15', 'contact14@email.com', 'firstName14', 'lastName14');
INSERT INTO `contact` VALUES ('16', 'contact15@email.com', 'firstName15', 'lastName15');
INSERT INTO `contact` VALUES ('17', 'contact16@email.com', 'firstName16', 'lastName16');
INSERT INTO `contact` VALUES ('18', 'contact17@email.com', 'firstName17', 'lastName17');
INSERT INTO `contact` VALUES ('19', 'contact18@email.com', 'firstName18', 'lastName18');
INSERT INTO `contact` VALUES ('20', 'contact19@email.com', 'firstName19', 'lastName19');
INSERT INTO `contact` VALUES ('21', 'contact20@email.com', 'firstName20', 'lastName20');
INSERT INTO `contact` VALUES ('22', 'contact21@email.com', 'firstName21', 'lastName21');
INSERT INTO `contact` VALUES ('23', 'contact22@email.com', 'firstName22', 'lastName22');
INSERT INTO `contact` VALUES ('24', 'contact23@email.com', 'firstName23', 'lastName23');
INSERT INTO `contact` VALUES ('25', 'contact24@email.com', 'firstName24', 'lastName24');
INSERT INTO `contact` VALUES ('26', 'contact25@email.com', 'firstName25', 'lastName25');
INSERT INTO `contact` VALUES ('27', 'contact26@email.com', 'firstName26', 'lastName26');
INSERT INTO `contact` VALUES ('28', 'contact27@email.com', 'firstName27', 'lastName27');
INSERT INTO `contact` VALUES ('29', 'contact28@email.com', 'firstName28', 'lastName28');
INSERT INTO `contact` VALUES ('30', 'contact29@email.com', 'firstName29', 'lastName29');
INSERT INTO `contact` VALUES ('31', 'contact30@email.com', 'firstName30', 'lastName30');
INSERT INTO `contact` VALUES ('32', 'contact31@email.com', 'firstName31', 'lastName31');
INSERT INTO `contact` VALUES ('33', 'contact32@email.com', 'firstName32', 'lastName32');
INSERT INTO `contact` VALUES ('34', 'contact33@email.com', 'firstName33', 'lastName33');
INSERT INTO `contact` VALUES ('35', 'contact34@email.com', 'firstName34', 'lastName34');
INSERT INTO `contact` VALUES ('36', 'contact35@email.com', 'firstName35', 'lastName35');
INSERT INTO `contact` VALUES ('37', 'contact36@email.com', 'firstName36', 'lastName36');
INSERT INTO `contact` VALUES ('38', 'contact37@email.com', 'firstName37', 'lastName37');
INSERT INTO `contact` VALUES ('39', 'contact38@email.com', 'firstName38', 'lastName38');
INSERT INTO `contact` VALUES ('40', 'contact39@email.com', 'firstName39', 'lastName39');
INSERT INTO `contact` VALUES ('41', 'contact40@email.com', 'firstName40', 'lastName40');
INSERT INTO `contact` VALUES ('42', 'contact41@email.com', 'firstName41', 'lastName41');
INSERT INTO `contact` VALUES ('43', 'contact42@email.com', 'firstName42', 'lastName42');
INSERT INTO `contact` VALUES ('44', 'contact43@email.com', 'firstName43', 'lastName43');
INSERT INTO `contact` VALUES ('45', 'contact44@email.com', 'firstName44', 'lastName44');
INSERT INTO `contact` VALUES ('46', 'contact45@email.com', 'firstName45', 'lastName45');
INSERT INTO `contact` VALUES ('47', 'contact46@email.com', 'firstName46', 'lastName46');
INSERT INTO `contact` VALUES ('48', 'contact47@email.com', 'firstName47', 'lastName47');
INSERT INTO `contact` VALUES ('49', 'contact48@email.com', 'firstName48', 'lastName48');
INSERT INTO `contact` VALUES ('50', 'contact49@email.com', 'firstName49', 'lastName49');
INSERT INTO `contact` VALUES ('51', 'contact50@email.com', 'firstName50', 'lastName50');
INSERT INTO `contact` VALUES ('52', 'contact51@email.com', 'firstName51', 'lastName51');
INSERT INTO `contact` VALUES ('53', 'contact52@email.com', 'firstName52', 'lastName52');
INSERT INTO `contact` VALUES ('54', 'contact53@email.com', 'firstName53', 'lastName53');
INSERT INTO `contact` VALUES ('55', 'contact54@email.com', 'firstName54', 'lastName54');
INSERT INTO `contact` VALUES ('56', 'contact55@email.com', 'firstName55', 'lastName55');
INSERT INTO `contact` VALUES ('57', 'contact56@email.com', 'firstName56', 'lastName56');
INSERT INTO `contact` VALUES ('58', 'contact57@email.com', 'firstName57', 'lastName57');
INSERT INTO `contact` VALUES ('59', 'contact58@email.com', 'firstName58', 'lastName58');
INSERT INTO `contact` VALUES ('60', 'contact59@email.com', 'firstName59', 'lastName59');
INSERT INTO `contact` VALUES ('61', 'contact60@email.com', 'firstName60', 'lastName60');
INSERT INTO `contact` VALUES ('62', 'contact61@email.com', 'firstName61', 'lastName61');
INSERT INTO `contact` VALUES ('63', 'contact62@email.com', 'firstName62', 'lastName62');
INSERT INTO `contact` VALUES ('64', 'contact63@email.com', 'firstName63', 'lastName63');
INSERT INTO `contact` VALUES ('65', 'contact64@email.com', 'firstName64', 'lastName64');
INSERT INTO `contact` VALUES ('66', 'contact65@email.com', 'firstName65', 'lastName65');
INSERT INTO `contact` VALUES ('67', 'contact66@email.com', 'firstName66', 'lastName66');
INSERT INTO `contact` VALUES ('68', 'contact67@email.com', 'firstName67', 'lastName67');
INSERT INTO `contact` VALUES ('69', 'contact68@email.com', 'firstName68', 'lastName68');
INSERT INTO `contact` VALUES ('70', 'contact69@email.com', 'firstName69', 'lastName69');
INSERT INTO `contact` VALUES ('71', 'contact70@email.com', 'firstName70', 'lastName70');
INSERT INTO `contact` VALUES ('72', 'contact71@email.com', 'firstName71', 'lastName71');
INSERT INTO `contact` VALUES ('73', 'contact72@email.com', 'firstName72', 'lastName72');
INSERT INTO `contact` VALUES ('74', 'contact73@email.com', 'firstName73', 'lastName73');
INSERT INTO `contact` VALUES ('75', 'contact74@email.com', 'firstName74', 'lastName74');
INSERT INTO `contact` VALUES ('76', 'contact75@email.com', 'firstName75', 'lastName75');
INSERT INTO `contact` VALUES ('77', 'contact76@email.com', 'firstName76', 'lastName76');
INSERT INTO `contact` VALUES ('78', 'contact77@email.com', 'firstName77', 'lastName77');
INSERT INTO `contact` VALUES ('79', 'contact78@email.com', 'firstName78', 'lastName78');
INSERT INTO `contact` VALUES ('80', 'contact79@email.com', 'firstName79', 'lastName79');
INSERT INTO `contact` VALUES ('81', 'contact80@email.com', 'firstName80', 'lastName80');
INSERT INTO `contact` VALUES ('82', 'contact81@email.com', 'firstName81', 'lastName81');
INSERT INTO `contact` VALUES ('83', 'contact82@email.com', 'firstName82', 'lastName82');
INSERT INTO `contact` VALUES ('84', 'contact83@email.com', 'firstName83', 'lastName83');
INSERT INTO `contact` VALUES ('85', 'contact84@email.com', 'firstName84', 'lastName84');
INSERT INTO `contact` VALUES ('86', 'contact85@email.com', 'firstName85', 'lastName85');
INSERT INTO `contact` VALUES ('87', 'contact86@email.com', 'firstName86', 'lastName86');
INSERT INTO `contact` VALUES ('88', 'contact87@email.com', 'firstName87', 'lastName87');
INSERT INTO `contact` VALUES ('89', 'contact88@email.com', 'firstName88', 'lastName88');
INSERT INTO `contact` VALUES ('90', 'contact89@email.com', 'firstName89', 'lastName89');
INSERT INTO `contact` VALUES ('91', 'contact90@email.com', 'firstName90', 'lastName90');
INSERT INTO `contact` VALUES ('92', 'contact91@email.com', 'firstName91', 'lastName91');
INSERT INTO `contact` VALUES ('93', 'contact92@email.com', 'firstName92', 'lastName92');
INSERT INTO `contact` VALUES ('94', 'contact93@email.com', 'firstName93', 'lastName93');
INSERT INTO `contact` VALUES ('95', 'contact94@email.com', 'firstName94', 'lastName94');
INSERT INTO `contact` VALUES ('96', 'contact95@email.com', 'firstName95', 'lastName95');
INSERT INTO `contact` VALUES ('97', 'contact96@email.com', 'firstName96', 'lastName96');
INSERT INTO `contact` VALUES ('98', 'contact97@email.com', 'firstName97', 'lastName97');
INSERT INTO `contact` VALUES ('99', 'contact98@email.com', 'firstName98', 'lastName98');
INSERT INTO `contact` VALUES ('100', 'contact99@email.com', 'firstName99', 'lastName99');

-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');
