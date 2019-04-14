/*
Navicat MySQL Data Transfer

Source Server         : devrp
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : dev3

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-05-11 23:27:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addon_account
-- ----------------------------
DROP TABLE IF EXISTS `addon_account`;
CREATE TABLE `addon_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of addon_account
-- ----------------------------
INSERT INTO `addon_account` VALUES ('1', 'caution', 'Caution', '0');
INSERT INTO `addon_account` VALUES ('13', 'society_police', 'Police', '1');
INSERT INTO `addon_account` VALUES ('14', 'society_mecano', 'Mécano', '1');
INSERT INTO `addon_account` VALUES ('17', 'society_banker', 'Banque', '1');
INSERT INTO `addon_account` VALUES ('18', 'bank_savings', 'Livret Bleu', '0');
INSERT INTO `addon_account` VALUES ('22', 'society_realestateagent', 'Agent immobilier', '1');
INSERT INTO `addon_account` VALUES ('24', 'property_black_money', 'Argent Sale Propriété', '0');
INSERT INTO `addon_account` VALUES ('29', 'society_cardealer', 'Concessionnaire', '1');
INSERT INTO `addon_account` VALUES ('37', 'society_ambulance', 'Ambulance', '1');
INSERT INTO `addon_account` VALUES ('46', 'society_militaires', 'Militaires', '1');
INSERT INTO `addon_account` VALUES ('53', 'society_bandits', 'Bandits', '1');
INSERT INTO `addon_account` VALUES ('59', 'society_taxi', 'Taxi', '1');
INSERT INTO `addon_account` VALUES ('60', 'society_gouv', 'Gouv', '1');
INSERT INTO `addon_account` VALUES ('61', 'society_tabac', 'Tabac', '1');
INSERT INTO `addon_account` VALUES ('62', 'society_mecano_black', 'Argent Sale Mecano', '1');
INSERT INTO `addon_account` VALUES ('63', 'society_vigne', 'Vigneron', '1');
INSERT INTO `addon_account` VALUES ('64', 'society_grocer', 'Epicier', '1');
INSERT INTO `addon_account` VALUES ('65', 'society_teamster', 'Routier', '1');
INSERT INTO `addon_account` VALUES ('66', 'society_bahama', 'Bahama Mas', '1');
INSERT INTO `addon_account` VALUES ('67', 'society_karting', 'Karting', '1');
INSERT INTO `addon_account` VALUES ('68', 'society_admin', 'Admin', '1');
INSERT INTO `addon_account` VALUES ('73', 'society_gunshop', 'Armurerie', '1');
INSERT INTO `addon_account` VALUES ('74', 'society_wash', 'Lavage', '1');
INSERT INTO `addon_account` VALUES ('75', 'society_avocat', 'Avocat', '1');
INSERT INTO `addon_account` VALUES ('76', 'society_bandits_black', 'Argent Sale Bandits', '1');
INSERT INTO `addon_account` VALUES ('79', 'society_police_black', 'Argent Sale Police', '1');
INSERT INTO `addon_account` VALUES ('77', 'society_unicorn', 'Unicorn', '1');
INSERT INTO `addon_account` VALUES ('80', 'society_biker', 'BikerShop', '1');
INSERT INTO `addon_account` VALUES ('81', 'society_dock', 'DockShop', '1');
INSERT INTO `addon_account` VALUES ('82', 'society_fisherman', 'Pêcheur', '1');
INSERT INTO `addon_account` VALUES ('83', 'society_fuel', 'Rafineur', '1');
INSERT INTO `addon_account` VALUES ('84', 'society_lumberjack', 'Bûcheron', '1');
INSERT INTO `addon_account` VALUES ('85', 'society_miner', 'Mineur', '1');
INSERT INTO `addon_account` VALUES ('86', 'society_reporter', 'Reporteur', '1');
INSERT INTO `addon_account` VALUES ('87', 'society_slaughterer', 'Abatteur', '1');
INSERT INTO `addon_account` VALUES ('88', 'society_textil', 'Couturier', '1');
INSERT INTO `addon_account` VALUES ('89', 'society_cardealer2', 'Concessionnaire2', '1');

-- ----------------------------
-- Table structure for addon_account_data
-- ----------------------------
DROP TABLE IF EXISTS `addon_account_data`;
CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4294 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of addon_account_data
-- ----------------------------

-- ----------------------------
-- Table structure for addon_inventory
-- ----------------------------
DROP TABLE IF EXISTS `addon_inventory`;
CREATE TABLE `addon_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of addon_inventory
-- ----------------------------
INSERT INTO `addon_inventory` VALUES ('59', 'property', 'Propriété', '0');
INSERT INTO `addon_inventory` VALUES ('25', 'society_bandits', 'Bandits', '1');
INSERT INTO `addon_inventory` VALUES ('14', 'society_realestateagent', 'Agent Immo', '1');
INSERT INTO `addon_inventory` VALUES ('10', 'society_banker', 'Banquier', '1');
INSERT INTO `addon_inventory` VALUES ('9', 'society_cardealer', 'Concessionnaire', '1');
INSERT INTO `addon_inventory` VALUES ('8', 'society_police', 'Police', '1');
INSERT INTO `addon_inventory` VALUES ('7', 'society_mecano', 'Mecano', '1');
INSERT INTO `addon_inventory` VALUES ('6', 'society_ambulance', 'Ambulance', '1');
INSERT INTO `addon_inventory` VALUES ('1', 'property', 'Propriété', '0');
INSERT INTO `addon_inventory` VALUES ('60', 'society_taxi', 'Taxi', '1');
INSERT INTO `addon_inventory` VALUES ('61', 'society_gouv', 'Gouv', '1');
INSERT INTO `addon_inventory` VALUES ('62', 'society_tabac', 'Tabac', '1');
INSERT INTO `addon_inventory` VALUES ('63', 'society_vigne', 'Vigneron', '1');
INSERT INTO `addon_inventory` VALUES ('64', 'society_bahama', 'Bahama Mas', '1');
INSERT INTO `addon_inventory` VALUES ('65', 'society_karting', 'Karting', '1');
INSERT INTO `addon_inventory` VALUES ('66', 'society_admin', 'Admin', '1');
INSERT INTO `addon_inventory` VALUES ('67', 'society_teamster', 'Routier', '1');
INSERT INTO `addon_inventory` VALUES ('68', 'society_grocer', 'Epicier', '1');
INSERT INTO `addon_inventory` VALUES ('70', 'society_gunshop', 'Armurerie', '1');
INSERT INTO `addon_inventory` VALUES ('71', 'society_gunshop_bossvault', 'Armurerie (Coffre Secondaire)', '1');
INSERT INTO `addon_inventory` VALUES ('72', 'society_wash', 'Lavage Auto', '1');
INSERT INTO `addon_inventory` VALUES ('73', 'society_avocat', 'Avocat', '1');
INSERT INTO `addon_inventory` VALUES ('74', 'society_unicorn', 'Unicorn', '1');
INSERT INTO `addon_inventory` VALUES ('75', 'society_unicorn_fridge', 'Unicorn', '1');
INSERT INTO `addon_inventory` VALUES ('76', 'society_biker', 'BikerShop', '1');
INSERT INTO `addon_inventory` VALUES ('77', 'society_dock', 'DockShop', '1');
INSERT INTO `addon_inventory` VALUES ('78', 'society_slaughterer', 'Abatteur', '1');
INSERT INTO `addon_inventory` VALUES ('79', 'society_fisherman', 'Pêcheur', '1');
INSERT INTO `addon_inventory` VALUES ('80', 'society_miner', 'Mineur', '1');
INSERT INTO `addon_inventory` VALUES ('81', 'society_lumberjack', 'Bûcheron', '1');
INSERT INTO `addon_inventory` VALUES ('82', 'society_fuel', 'Rafineur', '1');
INSERT INTO `addon_inventory` VALUES ('83', 'society_reporter', 'Reporteur', '1');
INSERT INTO `addon_inventory` VALUES ('84', 'society_textil', 'Couturier', '1');
INSERT INTO `addon_inventory` VALUES ('85', 'society_cardealer2', 'Concessionnaire2', '1');

-- ----------------------------
-- Table structure for addon_inventory_items
-- ----------------------------
DROP TABLE IF EXISTS `addon_inventory_items`;
CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=599 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of addon_inventory_items
-- ----------------------------

-- ----------------------------
-- Table structure for biker_categories
-- ----------------------------
DROP TABLE IF EXISTS `biker_categories`;
CREATE TABLE `biker_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of biker_categories
-- ----------------------------
INSERT INTO `biker_categories` VALUES ('1', 'motorcycles', 'Motos');

-- ----------------------------
-- Table structure for biker_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `biker_vehicles`;
CREATE TABLE `biker_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of biker_vehicles
-- ----------------------------
INSERT INTO `biker_vehicles` VALUES ('73', 'spitro', '12500');
INSERT INTO `biker_vehicles` VALUES ('72', 'spitro', '12500');
INSERT INTO `biker_vehicles` VALUES ('79', 'AKUMA', '7500');
INSERT INTO `biker_vehicles` VALUES ('92', 'nh2r', '150000');

-- ----------------------------
-- Table structure for bikes
-- ----------------------------
DROP TABLE IF EXISTS `bikes`;
CREATE TABLE `bikes` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bikes
-- ----------------------------
INSERT INTO `bikes` VALUES ('169', 'Akuma', 'AKUMA', '7500', 'motorcycles');
INSERT INTO `bikes` VALUES ('170', 'Avarus', 'avarus', '18000', 'motorcycles');
INSERT INTO `bikes` VALUES ('171', 'Bagger', 'bagger', '13500', 'motorcycles');
INSERT INTO `bikes` VALUES ('172', 'Bati 801', 'bati', '12000', 'motorcycles');
INSERT INTO `bikes` VALUES ('173', 'Bati 801RR', 'bati2', '19000', 'motorcycles');
INSERT INTO `bikes` VALUES ('174', 'BF400', 'bf400', '6500', 'motorcycles');
INSERT INTO `bikes` VALUES ('175', 'BMX (velo)', 'bmx', '160', 'motorcycles');
INSERT INTO `bikes` VALUES ('176', 'Carbon RS', 'carbonrs', '18000', 'motorcycles');
INSERT INTO `bikes` VALUES ('177', 'Chimera', 'chimera', '38000', 'motorcycles');
INSERT INTO `bikes` VALUES ('178', 'Cliffhanger', 'cliffhanger', '9500', 'motorcycles');
INSERT INTO `bikes` VALUES ('179', 'Cruiser (velo)', 'cruiser', '510', 'motorcycles');
INSERT INTO `bikes` VALUES ('180', 'Daemon', 'daemon', '11500', 'motorcycles');
INSERT INTO `bikes` VALUES ('181', 'Daemon High', 'daemon2', '13500', 'motorcycles');
INSERT INTO `bikes` VALUES ('182', 'Defiler', 'defiler', '9800', 'motorcycles');
INSERT INTO `bikes` VALUES ('183', 'Double T', 'double', '28000', 'motorcycles');
INSERT INTO `bikes` VALUES ('184', 'Enduro', 'enduro', '5500', 'motorcycles');
INSERT INTO `bikes` VALUES ('185', 'Esskey', 'esskey', '4200', 'motorcycles');
INSERT INTO `bikes` VALUES ('186', 'Faggio', 'faggio', '1900', 'motorcycles');
INSERT INTO `bikes` VALUES ('187', 'Vespa', 'faggio2', '2800', 'motorcycles');
INSERT INTO `bikes` VALUES ('188', 'Fixter (velo)', 'fixter', '225', 'motorcycles');
INSERT INTO `bikes` VALUES ('189', 'Gargoyle', 'gargoyle', '16500', 'motorcycles');
INSERT INTO `bikes` VALUES ('190', 'Hakuchou', 'hakuchou', '31000', 'motorcycles');
INSERT INTO `bikes` VALUES ('191', 'Hakuchou Sport', 'hakuchou2', '55000', 'motorcycles');
INSERT INTO `bikes` VALUES ('192', 'Hexer', 'hexer', '12000', 'motorcycles');
INSERT INTO `bikes` VALUES ('193', 'Innovation', 'innovation', '23500', 'motorcycles');
INSERT INTO `bikes` VALUES ('194', 'Manchez', 'manchez', '5300', 'motorcycles');
INSERT INTO `bikes` VALUES ('195', 'Nemesis', 'nemesis', '5800', 'motorcycles');
INSERT INTO `bikes` VALUES ('196', 'Nightblade', 'nightblade', '35000', 'motorcycles');
INSERT INTO `bikes` VALUES ('197', 'PCJ-600', 'pcj', '6200', 'motorcycles');
INSERT INTO `bikes` VALUES ('198', 'Ruffian', 'ruffian', '6800', 'motorcycles');
INSERT INTO `bikes` VALUES ('199', 'Sanchez', 'sanchez', '5300', 'motorcycles');
INSERT INTO `bikes` VALUES ('200', 'Sanchez Sport', 'sanchez2', '5300', 'motorcycles');
INSERT INTO `bikes` VALUES ('201', 'Sanctus', 'sanctus', '25000', 'motorcycles');
INSERT INTO `bikes` VALUES ('202', 'Scorcher (velo)', 'scorcher', '280', 'motorcycles');
INSERT INTO `bikes` VALUES ('203', 'Sovereign', 'sovereign', '22000', 'motorcycles');
INSERT INTO `bikes` VALUES ('205', 'Thrust', 'thrust', '24000', 'motorcycles');
INSERT INTO `bikes` VALUES ('206', 'Tri bike (velo)', 'tribike3', '520', 'motorcycles');
INSERT INTO `bikes` VALUES ('207', 'Vader', 'vader', '7200', 'motorcycles');
INSERT INTO `bikes` VALUES ('208', 'Vortex', 'vortex', '9800', 'motorcycles');
INSERT INTO `bikes` VALUES ('209', 'Woflsbane', 'wolfsbane', '9000', 'motorcycles');
INSERT INTO `bikes` VALUES ('210', 'Zombie', 'zombiea', '9500', 'motorcycles');
INSERT INTO `bikes` VALUES ('211', 'Zombie Luxuary', 'zombieb', '12000', 'motorcycles');
INSERT INTO `bikes` VALUES ('212', 'FCR', 'FCR', '15000', 'motorcycles');
INSERT INTO `bikes` VALUES ('213', 'FCR2', 'FCR2', '17000', 'motorcycles');
INSERT INTO `bikes` VALUES ('214', 'ratbike', 'ratbike', '5000', 'motorcycles');
INSERT INTO `bikes` VALUES ('215', 'DIABLOUS', 'DIABLOUS', '15000', 'motorcycles');
INSERT INTO `bikes` VALUES ('216', 'DIABLOUS2', 'DIABLOUS2', '17000', 'motorcycles');
INSERT INTO `bikes` VALUES ('218', 'Blazer', 'blazer', '6500', 'motorcycles');
INSERT INTO `bikes` VALUES ('219', 'Blazer Sport', 'blazer4', '8500', 'motorcycles');

-- ----------------------------
-- Table structure for billing
-- ----------------------------
DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2060 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of billing
-- ----------------------------

-- ----------------------------
-- Table structure for cardealer_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `cardealer_vehicles`;
CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=394 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cardealer_vehicles
-- ----------------------------
INSERT INTO `cardealer_vehicles` VALUES ('352', 'ninef', '65000');
INSERT INTO `cardealer_vehicles` VALUES ('315', 'brioso', '18000');
INSERT INTO `cardealer_vehicles` VALUES ('317', 'carbonizzare', '75000');
INSERT INTO `cardealer_vehicles` VALUES ('318', 'bullet', '90000');
INSERT INTO `cardealer_vehicles` VALUES ('365', 'washington', '9000');

-- ----------------------------
-- Table structure for cardealer_vehicles_pub
-- ----------------------------
DROP TABLE IF EXISTS `cardealer_vehicles_pub`;
CREATE TABLE `cardealer_vehicles_pub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cardealer_vehicles_pub
-- ----------------------------

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `height` varchar(128) NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of characters
-- ----------------------------

-- ----------------------------
-- Table structure for datastore
-- ----------------------------
DROP TABLE IF EXISTS `datastore`;
CREATE TABLE `datastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of datastore
-- ----------------------------
INSERT INTO `datastore` VALUES ('1', 'property', 'Propriété', '0');
INSERT INTO `datastore` VALUES ('8', 'society_police', 'Police', '1');
INSERT INTO `datastore` VALUES ('18', 'society_realestateagent', 'Immobilier', '1');
INSERT INTO `datastore` VALUES ('22', 'society_cardealer', 'Concession', '1');
INSERT INTO `datastore` VALUES ('23', 'society_mecano', 'Mécano', '1');
INSERT INTO `datastore` VALUES ('26', 'user_ears', 'Oreilles', '0');
INSERT INTO `datastore` VALUES ('27', 'user_glasses', 'Lunettes', '0');
INSERT INTO `datastore` VALUES ('28', 'user_helmet', 'Casque/Chapeau', '0');
INSERT INTO `datastore` VALUES ('29', 'user_mask', 'Masque', '0');
INSERT INTO `datastore` VALUES ('36', 'society_bandits', 'Bandits', '1');
INSERT INTO `datastore` VALUES ('38', 'society_bandits_weapons', 'Bandits Armes', '1');
INSERT INTO `datastore` VALUES ('59', 'society_gouv', 'Gouv', '1');
INSERT INTO `datastore` VALUES ('60', 'society_tabac', 'Tabac', '1');
INSERT INTO `datastore` VALUES ('61', 'society_vigne', 'Vigneron', '1');
INSERT INTO `datastore` VALUES ('62', 'society_karting', 'Karting', '1');
INSERT INTO `datastore` VALUES ('63', 'society_admin', 'Admin', '1');
INSERT INTO `datastore` VALUES ('64', 'society_grocer', 'Epicier', '1');
INSERT INTO `datastore` VALUES ('65', 'society_teamster', 'Routier', '1');
INSERT INTO `datastore` VALUES ('67', 'society_gunshop', 'Armurerie', '1');
INSERT INTO `datastore` VALUES ('68', 'society_avocat', 'Avocat', '1');
INSERT INTO `datastore` VALUES ('69', 'drug_local', 'Local Drogue', '1');
INSERT INTO `datastore` VALUES ('70', 'society_taxi', 'Taxi', '1');
INSERT INTO `datastore` VALUES ('71', 'society_unicorn', 'Unicorn', '1');
INSERT INTO `datastore` VALUES ('72', 'society_banker', 'Banque', '1');
INSERT INTO `datastore` VALUES ('73', 'society_dock', 'Docks', '1');
INSERT INTO `datastore` VALUES ('74', 'society_bahama', 'Bahama', '1');
INSERT INTO `datastore` VALUES ('75', 'society_ambulance', 'Ambulance', '1');
INSERT INTO `datastore` VALUES ('76', 'society_wash', 'Wash Auto', '1');
INSERT INTO `datastore` VALUES ('77', 'society_biker', 'BikerShop', '1');
INSERT INTO `datastore` VALUES ('78', 'society_fisherman', 'Pêcheur', '1');
INSERT INTO `datastore` VALUES ('79', 'society_fuel', 'Rafineur', '1');
INSERT INTO `datastore` VALUES ('80', 'society_lumberjack', 'Bûcheron', '1');
INSERT INTO `datastore` VALUES ('81', 'society_miner', 'Mineur', '1');
INSERT INTO `datastore` VALUES ('82', 'society_reporter', 'Reporteur', '1');
INSERT INTO `datastore` VALUES ('83', 'society_slaughterer', 'Abatteur', '1');
INSERT INTO `datastore` VALUES ('84', 'society_textil', 'Couturier', '1');
INSERT INTO `datastore` VALUES ('85', 'society_cardealer2', 'Concession2', '1');

-- ----------------------------
-- Table structure for datastore_data
-- ----------------------------
DROP TABLE IF EXISTS `datastore_data`;
CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3539 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of datastore_data
-- ----------------------------

-- ----------------------------
-- Table structure for distributor
-- ----------------------------
DROP TABLE IF EXISTS `distributor`;
CREATE TABLE `distributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of distributor
-- ----------------------------
INSERT INTO `distributor` VALUES ('1', 'Distributor', 'pepsi', '60');
INSERT INTO `distributor` VALUES ('2', 'Distributor', 'sprite', '60');
INSERT INTO `distributor` VALUES ('3', 'Distributor', 'coca', '60');
INSERT INTO `distributor` VALUES ('4', 'Distributor', '7up', '60');
INSERT INTO `distributor` VALUES ('5', 'Distributor', 'fanta', '60');
INSERT INTO `distributor` VALUES ('6', 'Distributor', 'orangina', '60');
INSERT INTO `distributor` VALUES ('7', 'Distributor', 'coffee', '50');

-- ----------------------------
-- Table structure for drive
-- ----------------------------
DROP TABLE IF EXISTS `drive`;
CREATE TABLE `drive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of drive
-- ----------------------------
INSERT INTO `drive` VALUES ('1', 'Drive', 'bigmac', '120', 'item_standard');
INSERT INTO `drive` VALUES ('2', 'Drive', 'frites', '70', 'item_standard');
INSERT INTO `drive` VALUES ('3', 'Drive', 'cocacola', '60', 'item_standard');
INSERT INTO `drive` VALUES ('4', 'Drive', '7up', '60', 'item_standard');
INSERT INTO `drive` VALUES ('5', 'Drive', 'sprite', '60', 'item_standard');
INSERT INTO `drive` VALUES ('6', 'Drive', 'fanta', '60', 'item_standard');
INSERT INTO `drive` VALUES ('7', 'Drive', 'orangina', '60', 'item_standard');
INSERT INTO `drive` VALUES ('8', 'Drive', 'coffee', '55', 'item_standard');
INSERT INTO `drive` VALUES ('9', 'Drive', 'eaugazifie', '50', 'item_standard');
INSERT INTO `drive` VALUES ('10', 'Drive', 'redbull', '70', 'item_standard');

-- ----------------------------
-- Table structure for faction
-- ----------------------------
DROP TABLE IF EXISTS `faction`;
CREATE TABLE `faction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of faction
-- ----------------------------
INSERT INTO `faction` VALUES ('3', 'bandits', 'Bandits');
INSERT INTO `faction` VALUES ('2', 'resid', 'État');

-- ----------------------------
-- Table structure for faction_grades
-- ----------------------------
DROP TABLE IF EXISTS `faction_grades`;
CREATE TABLE `faction_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faction_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34349 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of faction_grades
-- ----------------------------
INSERT INTO `faction_grades` VALUES ('2', 'bandits', '0', 'recrue', 'Recrue', '{\"mask_1\":0,\"arms\":31,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":61,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":15,\"eyebrows_3\":0,\"pants_2\":7,\"beard_4\":0,\"torso_2\":3,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":25,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":9,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":25,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{}');
INSERT INTO `faction_grades` VALUES ('3', 'bandits', '1', 'affranchis', 'Affranchis', '{\"mask_1\":0,\"arms\":31,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":61,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":15,\"eyebrows_3\":0,\"pants_2\":7,\"beard_4\":0,\"torso_2\":3,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":25,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":9,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":25,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{}');
INSERT INTO `faction_grades` VALUES ('4', 'bandits', '2', 'capo', 'Confirmé', '{\"mask_1\":0,\"arms\":31,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":61,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":15,\"eyebrows_3\":0,\"pants_2\":7,\"beard_4\":0,\"torso_2\":3,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":25,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":9,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":25,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{}');
INSERT INTO `faction_grades` VALUES ('5', 'bandits', '3', 'droit', 'Sous Chef', '{\"mask_1\":0,\"arms\":31,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":61,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":15,\"eyebrows_3\":0,\"pants_2\":7,\"beard_4\":0,\"torso_2\":3,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":25,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":9,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":25,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{}');
INSERT INTO `faction_grades` VALUES ('1', 'resid', '0', 'recrue', 'Civil', '{}', '{}');
INSERT INTO `faction_grades` VALUES ('6', 'bandits', '4', 'boss', 'Boss', '{\"mask_1\":99,\"arms\":17,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":2,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":68,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":72,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":27,\"tshirt_2\":3,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":33,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":27,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}');

-- ----------------------------
-- Table structure for faction_moneywash
-- ----------------------------
DROP TABLE IF EXISTS `faction_moneywash`;
CREATE TABLE `faction_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of faction_moneywash
-- ----------------------------

-- ----------------------------
-- Table structure for fine_types
-- ----------------------------
DROP TABLE IF EXISTS `fine_types`;
CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fine_types
-- ----------------------------
INSERT INTO `fine_types` VALUES ('1', 'Conduite en état d\'ébriété', '8000', '0');
INSERT INTO `fine_types` VALUES ('2', 'Conduite Sans Permis ou Licence', '8000', '0');
INSERT INTO `fine_types` VALUES ('3', 'Dégradation de la voie publique', '2500', '0');
INSERT INTO `fine_types` VALUES ('4', 'Défaut du port du casque en moto', '500', '0');
INSERT INTO `fine_types` VALUES ('5', 'Délit de fuite', '15000', '0');
INSERT INTO `fine_types` VALUES ('6', 'Demi-Tour non autorisé', '750', '0');
INSERT INTO `fine_types` VALUES ('7', 'Ebriété sur la voie publique', '1000', '0');
INSERT INTO `fine_types` VALUES ('8', 'Entrave à la circulation', '800', '0');
INSERT INTO `fine_types` VALUES ('9', 'Excès de vitesse mois de 20km/h', '1000', '0');
INSERT INTO `fine_types` VALUES ('10', 'Excès de vitesse de plus de 20km/h', '5000', '0');
INSERT INTO `fine_types` VALUES ('11', 'Franchissement de la ligne continue', '500', '0');
INSERT INTO `fine_types` VALUES ('12', 'Manisfestation sur la voie publique non autorisé', '4000', '0');
INSERT INTO `fine_types` VALUES ('13', 'Non respect d\'un feu', '2000', '0');
INSERT INTO `fine_types` VALUES ('14', 'Non respect d\'un stop', '2000', '0');
INSERT INTO `fine_types` VALUES ('15', 'Non respect d\'un véhicules prioritaire', '5000', '0');
INSERT INTO `fine_types` VALUES ('16', 'Taxe de fourrière', '1000', '0');
INSERT INTO `fine_types` VALUES ('17', 'Usage abusif du klaxon', '3000', '0');
INSERT INTO `fine_types` VALUES ('18', 'Véhicule Endommagé', '2000', '0');
INSERT INTO `fine_types` VALUES ('19', 'Agression Physique 45 min', '20000', '1');
INSERT INTO `fine_types` VALUES ('20', 'Dégradation de véhicule 30 min', '10000', '1');
INSERT INTO `fine_types` VALUES ('21', 'Entrave a l\'exercice 30 min', '10000', '1');
INSERT INTO `fine_types` VALUES ('22', 'Faux témoignage', '15000', '1');
INSERT INTO `fine_types` VALUES ('23', 'Homicide involontaire 30 min', '25000', '1');
INSERT INTO `fine_types` VALUES ('24', 'Homicide volontaire 3 jours', '150000', '1');
INSERT INTO `fine_types` VALUES ('25', 'Menace ou tentative d\'intimidation 30 min', '20000', '1');
INSERT INTO `fine_types` VALUES ('26', 'Outrage ou Insulte 15min', '15000', '1');
INSERT INTO `fine_types` VALUES ('27', 'Rébellion, refus d\'obtempérer 30 min', '15000', '1');
INSERT INTO `fine_types` VALUES ('28', 'Séquestration, enlèvement 2 jours', '75000', '1');
INSERT INTO `fine_types` VALUES ('29', 'Tentative d\'Agression physique 15 min', '7500', '1');
INSERT INTO `fine_types` VALUES ('30', 'Tentative d\'homicide Volontaire 2 jours', '75000', '1');
INSERT INTO `fine_types` VALUES ('31', 'Tentative de corruption 1 heure', '50000', '1');
INSERT INTO `fine_types` VALUES ('32', 'Vol de Véhicule de service 30 min', '50000', '1');
INSERT INTO `fine_types` VALUES ('33', 'Accident de la route', '1500', '2');
INSERT INTO `fine_types` VALUES ('34', 'Port d/un masque en ville', '3000', '2');
INSERT INTO `fine_types` VALUES ('35', 'Agression physique 15 min', '10000', '2');
INSERT INTO `fine_types` VALUES ('36', 'Agression verbale ou insulte', '7500', '2');
INSERT INTO `fine_types` VALUES ('37', 'Coups et blessures 15 min', '10000', '2');
INSERT INTO `fine_types` VALUES ('38', 'Dégradation volontaire de véhicule', '2000', '2');
INSERT INTO `fine_types` VALUES ('39', 'Homicide Involontaire 1 heure', '25000', '2');
INSERT INTO `fine_types` VALUES ('40', 'Homicide Volontaire 2 jours', '80000', '2');
INSERT INTO `fine_types` VALUES ('41', 'Menaces ou tentative d\'intimidation', '7500', '2');
INSERT INTO `fine_types` VALUES ('42', 'Séquestration ou enlèvement 2 heures', '40000', '2');
INSERT INTO `fine_types` VALUES ('43', 'Tentative d\'Agression physique 15 min', '5000', '2');
INSERT INTO `fine_types` VALUES ('44', 'Tentative d\'homicide volontaire 2 heures', '30000', '2');
INSERT INTO `fine_types` VALUES ('45', 'Vol de véhicule 30 min', '20000', '2');
INSERT INTO `fine_types` VALUES ('46', 'Sortie d\'une arme de 1ère categorie (non cumulable)', '2000', '3');
INSERT INTO `fine_types` VALUES ('47', 'Sortie d\'une arme de 2nd categorie (non cumulable)', '10000', '3');
INSERT INTO `fine_types` VALUES ('48', 'Sortie d\'une arme de 3ème catégorie (non cumulable)', '25000', '3');
INSERT INTO `fine_types` VALUES ('49', 'Usage d\'une arme de 1ère catégorie (non cumulable)', '4000', '3');
INSERT INTO `fine_types` VALUES ('50', 'Usage d\'une arme de 2nd catégorie (non cumulable)', '12000', '3');
INSERT INTO `fine_types` VALUES ('51', 'Usage d\'une arme de 3ème catégorie 30 min (non cumulable)', '30000', '3');
INSERT INTO `fine_types` VALUES ('52', 'Possession illégale d\'une arme de 1ère catégorie', '1000', '3');
INSERT INTO `fine_types` VALUES ('53', 'Possession illégale d\'une arme de 2nd catégorie', '8000', '3');
INSERT INTO `fine_types` VALUES ('54', 'Possession illégale d\'une arme de 3ème catégorie 15 min', '20000', '3');
INSERT INTO `fine_types` VALUES ('55', 'Récolte et ou culture de Cannabis 15 min', '15000', '4');
INSERT INTO `fine_types` VALUES ('56', 'Récolte et ou culture de Cocaine 30 min', '30000', '4');
INSERT INTO `fine_types` VALUES ('57', 'Récolte et ou culture de méthamphetamine 45 min', '45000', '4');
INSERT INTO `fine_types` VALUES ('58', 'Transformation de Cannabis 15 min', '15000', '4');
INSERT INTO `fine_types` VALUES ('59', 'Transformation de Cocaine 30 min', '30000', '4');
INSERT INTO `fine_types` VALUES ('60', 'Transformation de Méthamphetamine 45 min', '45000', '4');
INSERT INTO `fine_types` VALUES ('61', 'Revente de cannabis 15 min', '15000', '4');
INSERT INTO `fine_types` VALUES ('62', 'Revente de cocaine 30 min', '30000', '4');
INSERT INTO `fine_types` VALUES ('63', 'Revente de méthamphetamine 45 min', '45000', '4');
INSERT INTO `fine_types` VALUES ('64', 'Possession d\'argent sale <200k', '30000', '4');
INSERT INTO `fine_types` VALUES ('65', 'Récidive double les peines', '0', '4');
INSERT INTO `fine_types` VALUES ('66', 'Possession d\'argent sale >200k', '75000', '5');
INSERT INTO `fine_types` VALUES ('67', 'Braquage de Magasin 30 min', '20000', '5');
INSERT INTO `fine_types` VALUES ('68', 'Attaque de magasin 15 min', '15000', '5');
INSERT INTO `fine_types` VALUES ('69', 'Attaque armée de magasin/(banque 1 heure)', '30000', '5');
INSERT INTO `fine_types` VALUES ('70', 'Braquage armée de la banque centrale 4jours-perpétuité', '150000', '5');
INSERT INTO `fine_types` VALUES ('71', 'Complicité 30 min', '25000', '5');
INSERT INTO `fine_types` VALUES ('72', 'Acte de terrorisme 4jours-Perpétuité', '300000', '5');
INSERT INTO `fine_types` VALUES ('73', 'Incitation au terrorisme 1 jour', '200000', '5');
INSERT INTO `fine_types` VALUES ('74', 'Association de malfaiteurs 3 heures', '75000', '5');
INSERT INTO `fine_types` VALUES ('75', 'Récidive double les peines', '0', '5');
INSERT INTO `fine_types` VALUES ('76', 'Agression physique', '2000', '6');
INSERT INTO `fine_types` VALUES ('77', 'Dégradation de véhicule', '1000', '6');
INSERT INTO `fine_types` VALUES ('78', 'Entrave a l\'exercice', '5000', '6');
INSERT INTO `fine_types` VALUES ('79', 'Faux témoignage', '7500', '6');
INSERT INTO `fine_types` VALUES ('80', 'Possession/Recolte/Vente Drogues', '20000', '6');
INSERT INTO `fine_types` VALUES ('81', 'Homicide volontaire', '50000', '6');
INSERT INTO `fine_types` VALUES ('82', 'Menace ou tentative d\'intimidation', '10000', '6');
INSERT INTO `fine_types` VALUES ('83', 'Outrages ou insultes', '7500', '6');
INSERT INTO `fine_types` VALUES ('84', 'Rébellion, refus d\'obtempérer', '7500', '6');
INSERT INTO `fine_types` VALUES ('85', 'Sequestration, enlèvement', '50000', '6');
INSERT INTO `fine_types` VALUES ('86', 'Tentative d\'agression physique', '5000', '6');
INSERT INTO `fine_types` VALUES ('87', 'Tentative d\'homicide volontaire', '30000', '6');
INSERT INTO `fine_types` VALUES ('88', 'Tentative de corruption', '25000', '6');
INSERT INTO `fine_types` VALUES ('89', 'Vol de véhicule de service', '20000', '6');
INSERT INTO `fine_types` VALUES ('90', 'Agression physique', '1000', '6');
INSERT INTO `fine_types` VALUES ('91', 'Coups et blessures', '1000', '6');
INSERT INTO `fine_types` VALUES ('92', 'Homicide involontaire', '12500', '6');
INSERT INTO `fine_types` VALUES ('93', 'Homicide volontaire', '75000', '6');
INSERT INTO `fine_types` VALUES ('94', 'Séquestration, enlèvement', '20000', '6');
INSERT INTO `fine_types` VALUES ('95', 'Terrorisme', '400000', '6');
INSERT INTO `fine_types` VALUES ('96', 'Tentative d\'homicide volontaire', '100000', '6');
INSERT INTO `fine_types` VALUES ('97', 'Vol de véhicule', '10000', '6');
INSERT INTO `fine_types` VALUES ('98', 'Usage d\'une arme de 3ème catégorie', '15000', '6');
INSERT INTO `fine_types` VALUES ('99', 'Possession illégale d\'une arme de 3ème catégorie', '15000', '6');
INSERT INTO `fine_types` VALUES ('100', 'Attaque de magasin', '40000', '6');
INSERT INTO `fine_types` VALUES ('101', 'Attaque Armée de banque', '15000', '6');
INSERT INTO `fine_types` VALUES ('102', 'Complicité', '15000', '6');
INSERT INTO `fine_types` VALUES ('103', 'Association de malfaiteurs', '35000', '6');
INSERT INTO `fine_types` VALUES ('104', 'Attaque de la banque centrale', '100000', '6');

-- ----------------------------
-- Table structure for fine_types_ambulance
-- ----------------------------
DROP TABLE IF EXISTS `fine_types_ambulance`;
CREATE TABLE `fine_types_ambulance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fine_types_ambulance
-- ----------------------------
INSERT INTO `fine_types_ambulance` VALUES ('2', ' Soin', '500', '0');
INSERT INTO `fine_types_ambulance` VALUES ('3', 'Soin longue distance', '1500', '0');
INSERT INTO `fine_types_ambulance` VALUES ('4', 'Soin patient inconscient', '1000', '0');
INSERT INTO `fine_types_ambulance` VALUES ('5', 'Visite Médicale', '1000', '0');
INSERT INTO `fine_types_ambulance` VALUES ('6', 'Kit de Soin', '2000', '0');
INSERT INTO `fine_types_ambulance` VALUES ('7', 'Doliprane', '5', '0');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '-1',
  `weight` int(11) NOT NULL DEFAULT '1',
  `rare` int(11) NOT NULL DEFAULT '0',
  `can_remove` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22086 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'bread', 'Pain', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('2', 'water', 'Eau', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('3', 'alive_chicken', 'Poulet vivant', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('4', 'slaughtered_chicken', 'Poulet abattu', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('5', 'packaged_chicken', 'Poulet en barquette', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('6', 'fish', 'Poisson', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('7', 'stone', 'Pierre', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('8', 'washed_stone', 'Pierre Lavée', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('9', 'copper', 'Cuivre', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('10', 'iron', 'Fer', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('11', 'gold', 'Or', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('12', 'diamond', 'Diamant', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('13', 'wood', 'Bois', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('14', 'cutted_wood', 'Bois coupé', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('15', 'packaged_plank', 'Paquet de planches', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('19', 'whool', 'Laine', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('20', 'fabric', 'Tissu', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('21', 'clothe', 'Vêtement', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('22', 'gazbottle', 'bouteille de gaz', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('23', 'fixtool', 'outils réparation', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('24', 'carotool', 'outils carosserie', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('25', 'blowpipe', 'Chalumeaux', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('26', 'fixkit', 'Kit réparation', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('27', 'carokit', 'Kit carosserie', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('37', 'drive', 'Permis de conduire', '3', '1', '0', '1');
INSERT INTO `items` VALUES ('29', 'weed', 'Bud de Weed', '250', '1', '0', '1');
INSERT INTO `items` VALUES ('30', 'weed_pooch', 'Pochon de weed', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('31', 'coke', 'Coke', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('32', 'coke_pooch', 'Pochon de coke', '150', '1', '0', '1');
INSERT INTO `items` VALUES ('33', 'meth', 'Amphétamine', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('34', 'meth_pooch', 'Cristaux Meth', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('35', 'opium', 'Pavot', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('36', 'opium_pooch', 'Bloc d\'opium', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('38', 'drive_bike', 'Permis moto', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('39', 'drive_truck', 'Permis camion', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('40', 'dmv', 'Code de la route', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('41', 'vodka', 'Vodka', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('42', 'tequila', 'Tequila', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('43', 'beer', 'Bière', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('44', 'whisky', 'Whisky', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('45', 'wine', 'Vin', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('46', 'chocolate', 'Chocolat', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('47', 'sandwich', 'Sandwish Jambon Beurre', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('48', 'hamburger', 'Hamburger', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('50', 'menthe', 'Menthe', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('51', 'patate', 'Pomme de terre', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('52', 'raisin', 'Raisin', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('53', 'mojito', 'Mojito', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('55', 'champagne', 'Champagne', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('56', 'viande', 'Viande', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('57', 'frites', 'Frites', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('59', 'soda', 'Soda Orange', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('60', 'medkit', 'Kit de Soin', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('61', 'defibrilateur', 'Défibrilateur', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('62', 'rose', 'Rose', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('63', 'houblon', 'Houblon', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('64', 'malte', 'Malte', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('65', 'sucre', 'Sucre', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('66', 'fruits', 'Fruits', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('67', 'cocktail', 'Cocktail sans alcool', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('68', 'rhum', 'Rhum Ambré', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('163', '7up', '7up', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('2161', 'grand_cru', 'Grand cru', '250', '1', '0', '1');
INSERT INTO `items` VALUES ('2160', 'jus_raisin', 'Jus de raisin', '250', '1', '0', '1');
INSERT INTO `items` VALUES ('82', 'sedatif', 'Sédatif', '10', '1', '0', '1');
INSERT INTO `items` VALUES ('87', 'bague', 'Alliance', '2', '1', '0', '1');
INSERT INTO `items` VALUES ('117', 'gps', 'GPS', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('118', 'tel', 'iPhone', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('125', 'dopamine', 'Dopamine', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('126', 'adrenaline', 'Seringue Adrénaline', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('127', 'splif', 'Spliff de Weed', '100', '1', '0', '1');
INSERT INTO `items` VALUES ('130', 'puce', 'Puce de Cryptage', '20', '1', '0', '1');
INSERT INTO `items` VALUES ('162', 'coca', 'Coca-Cola', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('161', 'sprite', 'Sprite', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('160', 'pepsi', 'Pepsi', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('164', 'fanta', 'Fanta', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('165', 'orangina', 'Orangina', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('168', 'clip', 'Balles x25', '25', '1', '0', '1');
INSERT INTO `items` VALUES ('169', 'fishing_rod', 'Canne à Pêche', '2', '1', '0', '1');
INSERT INTO `items` VALUES ('170', 'hazmat1', 'Combinaison Hazmat Noir', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('171', 'ball', 'Ballon', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('172', 'bong', 'Pipe a Eau', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('173', 'rose', 'Rose', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('174', 'notepad', 'Cahier de notes', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('175', 'parapluie', 'Parapluie', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('176', 'bullet1', 'Gilet pare-balles Type 1', '10', '1', '0', '1');
INSERT INTO `items` VALUES ('177', 'bullet2', 'Gilet pare-balles Type 2', '10', '1', '0', '1');
INSERT INTO `items` VALUES ('178', 'bullet3', 'Gilet pare-balles Type 3', '10', '1', '0', '1');
INSERT INTO `items` VALUES ('179', 'bullet4', 'Gilet pare-balles - LSPD', '10', '1', '0', '1');
INSERT INTO `items` VALUES ('180', 'hazmat2', 'Combinaison Hazmat Bleu', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('181', 'hazmat3', 'Combinaison Hazmat Jaune', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('182', 'hazmat4', 'Combinaison Hazmat Blanche', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('22008', 'cigaret', 'Cigarette', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('190', 'swim', 'Tenue de Plongée', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('196', 'croquettes', 'Croquettes', '-1', '1', '0', '1');
INSERT INTO `items` VALUES ('2206', 'coffee', 'Café', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('2205', 'grapesjus', 'Jus de Raisin', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('2204', 'grape', 'Raisin', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('2201', 'meat', 'Viande de qualité', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('2162', 'vine', 'Vin', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('226', 'pommedeterre', 'Pomme de terre', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('2207', 'banana', 'Banane', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('227', 'steackhache', 'Steak Haché', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('2500', 'fisher', 'License de Pêche', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('2501', 'hunt', 'License de Châsse', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('2510', 'cocacola', 'Coca Cola', '80', '1', '0', '1');
INSERT INTO `items` VALUES ('228', 'feuilledecoca', 'Feuille de Coca', '300', '1', '0', '1');
INSERT INTO `items` VALUES ('229', 'thefroid', 'Froid', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('230', 'sirop', 'Sirop', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('231', 'cerealesmaltees', 'Céréales Maltée', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('233', 'cacao', 'Cacao', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('232', 'eaugazifie', 'Eau Gazifié', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('234', 'agrume', 'Agrum', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('235', 'cafeine', 'Cafeine', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('236', 'bigmac', 'Big Mac', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('237', 'weaponcard', 'License d\'armes', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('22013', 'vodkrb', 'Vodka RedBull', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('22012', 'whiskycoc', 'Whisky CocaCola', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('22011', 'myrte', 'myrte', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('22010', 'alcool', 'alcool', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('22009', 'myrtealcool', 'alcool de myrte', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('2009', 'redbull', 'RedBull', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('2077', 'COMPONENT_AT_PI_SUPP', '[acc] Silencieux 1', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('2078', 'COMPONENT_AT_AR_SUPP_02', '[acc] Silencieux 2', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22048', 'clip_50', 'Chargeur [50]', '10', '1', '0', '1');
INSERT INTO `items` VALUES ('22043', 'COMPONENT_REVOLVER_VARMOD_GOON', '[skin] Revolver - Voyou', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22042', 'COMPONENT_REVOLVER_VARMOD_BOSS', '[skin] Revolver - Boss', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22041', 'COMPONENT_SWITCHBLADE_VARMOD_VAR2', '[skin] Couteau à cran d\'arrêt - Bois', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22040', 'COMPONENT_SWITCHBLADE_VARMOD_VAR1', '[skin] Couteau à cran d\'arrêt - VIP', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22039', 'COMPONENT_KNUCKLE_VARMOD_BALLAS', '[skin] Poing américain - Ballas', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22038', 'COMPONENT_KNUCKLE_VARMOD_KING', '[skin] Poing américain - King', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22037', 'COMPONENT_KNUCKLE_VARMOD_PIMP', '[skin] Poing américain - Pimp', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22036', 'COMPONENT_KNUCKLE_VARMOD_DIAMOND', '[skin] Poing américain - Diamant', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22035', 'COMPONENT_KNUCKLE_VARMOD_HATE', '[skin] Poing américain - Haine', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22034', 'COMPONENT_KNUCKLE_VARMOD_VAGOS', '[skin] Poing américain - Vagos', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22033', 'COMPONENT_KNUCKLE_VARMOD_DOLLAR', '[skin] Poing américain - Dollar', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22032', 'COMPONENT_KNUCKLE_VARMOD_LOVE', '[skin] Poing américain - Amour', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22031', 'COMPONENT_KNUCKLE_VARMOD_PLAYER', '[skin] Poing américain - Joueur', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22030', 'COMPONENT_VARMOD_LUXE', '[skin] Finition - Luxe', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22029', 'COMPONENT_VARMOD_LOWRIDER', '[skin] Finition - Lowrider', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22028', 'TINT_05', '[tint] LSPD', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22027', 'TINT_03', '[tint] Rose', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22026', 'TINT_02', '[tint] Or', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22025', 'COMPONENT_AT_AR_CLIP_02', '[acc] Magasin étendu (Fusils)', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22024', 'COMPONENT_AT_PI_CLIP_02', '[acc] Magasin étendu (Pistolets)', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22023', 'COMPONENT_AT_SCOPE_MACRO', '[acc] Lunette (Fusils)', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22022', 'COMPONENT_AT_AR_AFGRIP', '[acc] Poignée (Fusils)', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22021', 'COMPONENT_AT_AR_FLSH', '[acc] Lampe torche (Fusils)', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22020', 'COMPONENT_AT_PI_FLSH', '[acc] Lampe torche (Pistolets)', '5', '1', '0', '1');
INSERT INTO `items` VALUES ('22068', 'cryptedphone', 'Portable Crypté', '10', '1', '0', '1');
INSERT INTO `items` VALUES ('22075', 'formol', 'Bouteille de Formoll', '200', '1', '0', '1');
INSERT INTO `items` VALUES ('22076', 'doliprane', 'Doliprane', '50', '1', '0', '1');
INSERT INTO `items` VALUES ('22077', 'weaponcard', 'Permis Armes', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('22080', 'nitro', 'Bouteille de Nitro', '20', '1', '0', '1');
INSERT INTO `items` VALUES ('22081', 'jumelles', 'Jumelles', '10', '1', '0', '1');
INSERT INTO `items` VALUES ('22082', 'licenseweed', 'License de Weed', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('22083', 'licensecoke', 'License de Coke', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('22084', 'licensemeth', 'License de meth', '1', '1', '0', '1');
INSERT INTO `items` VALUES ('22085', 'licenseopium', 'License d\'Opium', '1', '1', '0', '1');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('1', 'unemployed', 'Chômeur', '0');
INSERT INTO `jobs` VALUES ('2', 'ambulance', 'LSMD', '1');
INSERT INTO `jobs` VALUES ('3', 'police', 'LSPD', '1');
INSERT INTO `jobs` VALUES ('7', 'mecano', 'Mécano', '1');
INSERT INTO `jobs` VALUES ('4', 'banker', 'Banque', '1');
INSERT INTO `jobs` VALUES ('5', 'realestateagent', 'Immo', '1');
INSERT INTO `jobs` VALUES ('6', 'cardealer', 'Concession', '1');
INSERT INTO `jobs` VALUES ('8', 'slaughterer', 'Abatteur', '0');
INSERT INTO `jobs` VALUES ('9', 'fisherman', 'Pêcheur', '0');
INSERT INTO `jobs` VALUES ('10', 'miner', 'Mineur', '0');
INSERT INTO `jobs` VALUES ('11', 'lumberjack', 'Bûcheron', '0');
INSERT INTO `jobs` VALUES ('12', 'reporter', 'Journaliste', '1');
INSERT INTO `jobs` VALUES ('13', 'textil', 'Couturier', '0');
INSERT INTO `jobs` VALUES ('14', 'taxi', 'Taxi', '1');
INSERT INTO `jobs` VALUES ('15', 'gouv', 'Gouv', '1');
INSERT INTO `jobs` VALUES ('16', 'vigne', 'Vigneron', '1');
INSERT INTO `jobs` VALUES ('17', 'wash', 'Lavage Auto', '1');
INSERT INTO `jobs` VALUES ('18', 'avocat', 'Avocat', '1');
INSERT INTO `jobs` VALUES ('19', 'banker', 'Banquier', '1');
INSERT INTO `jobs` VALUES ('20', 'unicorn', 'Unicorn', '1');
INSERT INTO `jobs` VALUES ('21', 'biker', 'BikerShop', '1');

-- ----------------------------
-- Table structure for job_grades
-- ----------------------------
DROP TABLE IF EXISTS `job_grades`;
CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of job_grades
-- ----------------------------
INSERT INTO `job_grades` VALUES ('1', 'unemployed', '0', 'rsa', 'RSA', '250', '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}');
INSERT INTO `job_grades` VALUES ('83', 'ambulance', '3', 'boss', 'Superviseur', '1600', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes_1\":25,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":9,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"shoes_2\":0,\"skin\":34,\"pants_2\":7,\"bags_1\":45}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('82', 'ambulance', '2', 'chief_doctor', 'Medecin', '1200', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes_1\":25,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":9,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"shoes_2\":0,\"skin\":34,\"pants_2\":7,\"bags_1\":45}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('81', 'ambulance', '1', 'doctor', 'Interne', '1000', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes_1\":25,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":9,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"shoes_2\":0,\"skin\":34,\"pants_2\":7,\"bags_1\":45}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('80', 'ambulance', '0', 'ambulance', 'Paramedic', '950', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes_1\":25,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":9,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"shoes_2\":0,\"skin\":34,\"pants_2\":7,\"bags_1\":45}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('13', 'cardealer', '0', 'recruit', 'Recrue', '650', '{}', '{}');
INSERT INTO `job_grades` VALUES ('14', 'cardealer', '1', 'novice', 'Novice', '750', '{}', '{}');
INSERT INTO `job_grades` VALUES ('15', 'cardealer', '2', 'experienced', 'Experimente', '900', '{}', '{}');
INSERT INTO `job_grades` VALUES ('16', 'cardealer', '3', 'boss', 'Patron', '1100', '{}', '{}');
INSERT INTO `job_grades` VALUES ('17', 'police', '4', 'lieutenant', 'Lieutenant', '1200', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":2,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"glasses\":0,\"decals_1\":8,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"torso_2\":0,\"arms\":41,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"hair_2\":3,\"decals_2\":2,\"hair_color_2\":0,\"hair_color_1\":10,\"helmet_2\":0,\"face\":21,\"shoes\":24,\"torso_2\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"decals_1\":7,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('18', 'police', '5', 'boss', 'Capitaine', '1500', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('19', 'police', '3', 'sergeant_chef', 'Sergent Chef', '1100', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":2,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"glasses\":0,\"decals_1\":8,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"torso_2\":0,\"arms\":41,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"hair_2\":3,\"decals_2\":2,\"hair_color_2\":0,\"hair_color_1\":10,\"helmet_2\":0,\"face\":21,\"shoes\":24,\"torso_2\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"decals_1\":7,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('20', 'police', '2', 'sergeant', 'Sergent', '1000', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('21', 'police', '0', 'recruit', 'Cadet', '750', '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('22', 'police', '1', 'officer', 'Officier', '850', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('23', 'mecano', '0', 'recrue', 'Recrue', '550', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":95,\"torso_2\":0,\"decals_1\":0,\"decals_2\":0,\"arms\":11,\"pants_1\":9,\"pants_2\":7,\"shoes_1\":43,\"shoes_2\":1,\"helmet_1\":58,\"helmet_2\":0,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":5,\"hair_color_2\":0,\"hair_1\":2,\"sex\":0,\"face\":19,\"hair_2\":0,\"skin\":34}\', \'{}\')', '{}');
INSERT INTO `job_grades` VALUES ('24', 'mecano', '1', 'novice', 'Novice', '650', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":95,\"torso_2\":0,\"decals_1\":0,\"decals_2\":0,\"arms\":11,\"pants_1\":9,\"pants_2\":7,\"shoes_1\":43,\"shoes_2\":1,\"helmet_1\":58,\"helmet_2\":0,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":5,\"hair_color_2\":0,\"hair_1\":2,\"sex\":0,\"face\":19,\"hair_2\":0,\"skin\":34}\', \'{}\')', '{}');
INSERT INTO `job_grades` VALUES ('25', 'mecano', '2', 'experimente', 'Experimente', '750', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":95,\"torso_2\":0,\"decals_1\":0,\"decals_2\":0,\"arms\":11,\"pants_1\":9,\"pants_2\":7,\"shoes_1\":43,\"shoes_2\":1,\"helmet_1\":58,\"helmet_2\":0,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":5,\"hair_color_2\":0,\"hair_1\":2,\"sex\":0,\"face\":19,\"hair_2\":0,\"skin\":34}\', \'{}\')', '{}');
INSERT INTO `job_grades` VALUES ('26', 'mecano', '3', 'chief', 'Chef d\'équipe', '850', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":43,\"torso_2\":0,\"decals_1\":0,\"decals_2\":0,\"arms\":11,\"pants_1\":9,\"pants_2\":7,\"shoes_1\":43,\"shoes_2\":1,\"helmet_1\":6,\"helmet_2\":0,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":5,\"hair_color_2\":0,\"hair_1\":2,\"sex\":0,\"face\":19,\"hair_2\":0,\"skin\":34}\', \'{}\')', '{}');
INSERT INTO `job_grades` VALUES ('27', 'mecano', '4', 'boss', 'Patron', '1100', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":43,\"torso_2\":0,\"decals_1\":0,\"decals_2\":0,\"arms\":11,\"pants_1\":9,\"pants_2\":7,\"shoes_1\":43,\"shoes_2\":1,\"helmet_1\":6,\"helmet_2\":0,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":5,\"hair_color_2\":0,\"hair_1\":2,\"sex\":0,\"face\":19,\"hair_2\":0,\"skin\":34}\', \'{}\')', '{}');
INSERT INTO `job_grades` VALUES ('38', 'realestateagent', '0', 'location', 'Location', '550', '{}', '{}');
INSERT INTO `job_grades` VALUES ('39', 'realestateagent', '1', 'vendeur', 'Chef des ventes', '650', '{}', '{}');
INSERT INTO `job_grades` VALUES ('40', 'realestateagent', '2', 'gestion', 'Directeur Adjoint', '750', '{}', '{}');
INSERT INTO `job_grades` VALUES ('41', 'realestateagent', '3', 'boss', 'Directeur Agence', '1100', '{}', '{}');
INSERT INTO `job_grades` VALUES ('180', 'lumberjack', '0', 'interim', 'Intérimaire', '450', '{}', '{}');
INSERT INTO `job_grades` VALUES ('181', 'fisherman', '0', 'interim', 'Intérimaire', '450', '{}', '{}');
INSERT INTO `job_grades` VALUES ('184', 'textil', '0', 'interim', 'Intérimaire', '450', '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}');
INSERT INTO `job_grades` VALUES ('185', 'miner', '0', 'interim', 'Intérimaire', '450', '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}');
INSERT INTO `job_grades` VALUES ('186', 'slaughterer', '0', 'interim', 'Intérimaire', '450', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}');
INSERT INTO `job_grades` VALUES ('187', 'taxi', '0', 'recrue', 'Recrue', '550', '{\"beard_3\":0,\"helmet_2\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"mask_1\":0,\"watches_1\":-1,\"eyebrows_1\":33,\"eyebrows_2\":10,\"chain_1\":12,\"lipstick_1\":0,\"ears_2\":0,\"bproof_1\":0,\"helmet_1\":11,\"age_1\":0,\"arms\":11,\"makeup_3\":0,\"hair_2\":0,\"bracelets_1\":-1,\"shoes_1\":10,\"bags_2\":0,\"beard_2\":10,\"decals_2\":0,\"bracelets_2\":0,\"skin\":19,\"glasses_1\":0,\"age_2\":0,\"watches_2\":0,\"arms_1\":12,\"decals_1\":0,\"torso_1\":31,\"hair_1\":11,\"torso_2\":0,\"beard_4\":0,\"pants_1\":28,\"mask_2\":0,\"chain_2\":2,\"pants_2\":0,\"shoes_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"arms_2\":0,\"face\":0,\"beard_1\":18,\"tshirt_2\":16,\"eyebrows_3\":0,\"hair_color_1\":0,\"ears_1\":0,\"bags_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"sex\":0,\"tshirt_1\":96,\"hair_color_2\":5,\"lipstick_2\":0}', '{}');
INSERT INTO `job_grades` VALUES ('188', 'taxi', '1', 'novice', 'Novice', '650', '{\"beard_3\":0,\"helmet_2\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"mask_1\":0,\"watches_1\":-1,\"eyebrows_1\":33,\"eyebrows_2\":10,\"chain_1\":12,\"lipstick_1\":0,\"ears_2\":0,\"bproof_1\":0,\"helmet_1\":11,\"age_1\":0,\"arms\":11,\"makeup_3\":0,\"hair_2\":0,\"bracelets_1\":-1,\"shoes_1\":10,\"bags_2\":0,\"beard_2\":10,\"decals_2\":0,\"bracelets_2\":0,\"skin\":19,\"glasses_1\":0,\"age_2\":0,\"watches_2\":0,\"arms_1\":12,\"decals_1\":0,\"torso_1\":31,\"hair_1\":11,\"torso_2\":0,\"beard_4\":0,\"pants_1\":28,\"mask_2\":0,\"chain_2\":2,\"pants_2\":0,\"shoes_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"arms_2\":0,\"face\":0,\"beard_1\":18,\"tshirt_2\":16,\"eyebrows_3\":0,\"hair_color_1\":0,\"ears_1\":0,\"bags_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"sex\":0,\"tshirt_1\":96,\"hair_color_2\":5,\"lipstick_2\":0}', '{}');
INSERT INTO `job_grades` VALUES ('189', 'taxi', '2', 'experimente', 'Experimente', '750', '{\"beard_3\":0,\"helmet_2\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"mask_1\":0,\"watches_1\":-1,\"eyebrows_1\":33,\"eyebrows_2\":10,\"chain_1\":12,\"lipstick_1\":0,\"ears_2\":0,\"bproof_1\":0,\"helmet_1\":11,\"age_1\":0,\"arms\":11,\"makeup_3\":0,\"hair_2\":0,\"bracelets_1\":-1,\"shoes_1\":10,\"bags_2\":0,\"beard_2\":10,\"decals_2\":0,\"bracelets_2\":0,\"skin\":19,\"glasses_1\":0,\"age_2\":0,\"watches_2\":0,\"arms_1\":12,\"decals_1\":0,\"torso_1\":31,\"hair_1\":11,\"torso_2\":0,\"beard_4\":0,\"pants_1\":28,\"mask_2\":0,\"chain_2\":2,\"pants_2\":0,\"shoes_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"arms_2\":0,\"face\":0,\"beard_1\":18,\"tshirt_2\":16,\"eyebrows_3\":0,\"hair_color_1\":0,\"ears_1\":0,\"bags_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"sex\":0,\"tshirt_1\":96,\"hair_color_2\":5,\"lipstick_2\":0}', '{}');
INSERT INTO `job_grades` VALUES ('190', 'taxi', '3', 'uber', 'Uber', '950', '{\"beard_3\":0,\"helmet_2\":0,\"lipstick_3\":0,\"lipstick_4\":0,\"mask_1\":0,\"watches_1\":-1,\"eyebrows_1\":33,\"eyebrows_2\":10,\"chain_1\":12,\"lipstick_1\":0,\"ears_2\":0,\"bproof_1\":0,\"helmet_1\":11,\"age_1\":0,\"arms\":11,\"makeup_3\":0,\"hair_2\":0,\"bracelets_1\":-1,\"shoes_1\":10,\"bags_2\":0,\"beard_2\":10,\"decals_2\":0,\"bracelets_2\":0,\"skin\":19,\"glasses_1\":0,\"age_2\":0,\"watches_2\":0,\"arms_1\":12,\"decals_1\":0,\"torso_1\":31,\"hair_1\":11,\"torso_2\":0,\"beard_4\":0,\"pants_1\":28,\"mask_2\":0,\"chain_2\":2,\"pants_2\":0,\"shoes_2\":0,\"makeup_1\":0,\"makeup_4\":0,\"arms_2\":0,\"face\":0,\"beard_1\":18,\"tshirt_2\":16,\"eyebrows_3\":0,\"hair_color_1\":0,\"ears_1\":0,\"bags_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"glasses_2\":0,\"eyebrows_4\":0,\"sex\":0,\"tshirt_1\":96,\"hair_color_2\":5,\"lipstick_2\":0}', '{}');
INSERT INTO `job_grades` VALUES ('191', 'taxi', '4', 'boss', 'Patron', '1100', '{\"hair_color_1\":0,\"helmet_2\":0,\"bags_1\":0,\"lipstick_4\":0,\"mask_1\":0,\"watches_1\":-1,\"eyebrows_1\":33,\"tshirt_2\":0,\"chain_1\":2,\"beard_1\":18,\"face\":0,\"bproof_1\":0,\"helmet_1\":11,\"age_1\":0,\"makeup_1\":0,\"torso_2\":0,\"hair_2\":0,\"bracelets_1\":-1,\"glasses_1\":0,\"bags_2\":0,\"beard_2\":10,\"decals_2\":0,\"bracelets_2\":0,\"skin\":19,\"chain_2\":2,\"shoes_1\":10,\"watches_2\":0,\"arms\":11,\"decals_1\":0,\"torso_1\":31,\"mask_2\":0,\"makeup_3\":0,\"beard_4\":0,\"lipstick_1\":0,\"arms_1\":12,\"pants_1\":28,\"eyebrows_2\":10,\"shoes_2\":0,\"makeup_4\":0,\"lipstick_3\":0,\"pants_2\":0,\"hair_1\":11,\"lipstick_2\":0,\"sex\":0,\"eyebrows_3\":0,\"bproof_2\":0,\"ears_1\":0,\"age_2\":0,\"makeup_2\":0,\"beard_3\":0,\"glasses_2\":0,\"ears_2\":0,\"eyebrows_4\":0,\"hair_color_2\":5,\"arms_2\":0,\"tshirt_1\":33}', '{}');
INSERT INTO `job_grades` VALUES ('194', 'gouv', '0', 'recrue', 'Sécurité Gouv', '1500', '{}', '{}');
INSERT INTO `job_grades` VALUES ('195', 'gouv', '3', 'boss', 'Gouverneur', '2300', '{}', '{}');
INSERT INTO `job_grades` VALUES ('196', 'vigne', '0', 'recrue', 'Intérimaire', '500', '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('197', 'vigne', '1', 'novice', 'Vigneron', '650', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('198', 'vigne', '2', 'cdisenior', 'Chef de chai', '1000', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('199', 'vigne', '3', 'boss', 'Patron', '1500', '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');
INSERT INTO `job_grades` VALUES ('254', 'avocat', '1', 'chef', 'Associé', '1100', '{}', '{}');
INSERT INTO `job_grades` VALUES ('253', 'avocat', '0', 'recrue', 'Employé', '900', '{}', '{}');
INSERT INTO `job_grades` VALUES ('252', 'wash', '1', 'boss', 'Boss', '650', '{}', '{}');
INSERT INTO `job_grades` VALUES ('251', 'wash', '0', 'recrue', 'Recrue', '450', '{}', '{}');
INSERT INTO `job_grades` VALUES ('255', 'avocat', '2', 'boss', 'Directeur Cabinet', '1100', '{}', '{}');
INSERT INTO `job_grades` VALUES ('256', 'gouv', '1', 'chef', 'Chef Sécurité', '1800', '{}', '{}');
INSERT INTO `job_grades` VALUES ('257', 'banker', '0', 'advisor', 'Conseiller', '650', '{}', '{}');
INSERT INTO `job_grades` VALUES ('258', 'banker', '1', 'banker', 'Banquier', '750', '{}', '{}');
INSERT INTO `job_grades` VALUES ('259', 'banker', '2', 'business_banker', 'Banquier d\'affaire', '850', '{}', '{}');
INSERT INTO `job_grades` VALUES ('260', 'banker', '3', 'trader', 'Trader', '950', '{}', '{}');
INSERT INTO `job_grades` VALUES ('261', 'banker', '4', 'boss', 'Patron', '1300', '{}', '{}');
INSERT INTO `job_grades` VALUES ('263', 'unicorn', '0', 'barman', 'Barman', '550', '{}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":173,\"shoes_1\":42,\"shoes_2\":2,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":4,\"tshirt_1\":3,\"pants_1\":43,\"helmet_1\":57,\"torso_2\":0,\"arms\":4,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('264', 'unicorn', '1', 'dancer', 'Danseur', '650', '{}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":173,\"shoes_1\":42,\"shoes_2\":2,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":4,\"tshirt_1\":3,\"pants_1\":43,\"helmet_1\":57,\"torso_2\":0,\"arms\":4,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('265', 'unicorn', '2', 'viceboss', 'Co-gérant', '850', '{}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":173,\"shoes_1\":42,\"shoes_2\":2,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":4,\"tshirt_1\":3,\"pants_1\":43,\"helmet_1\":57,\"torso_2\":0,\"arms\":4,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('266', 'unicorn', '3', 'boss', 'Gérant', '950', '{}', '{\"tshirt_2\":0,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":173,\"shoes_1\":42,\"shoes_2\":2,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":4,\"tshirt_1\":3,\"pants_1\":43,\"helmet_1\":57,\"torso_2\":0,\"arms\":4,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}');
INSERT INTO `job_grades` VALUES ('267', 'biker', '0', 'novice', 'Prépa Moto', '750', '{}', '{}');
INSERT INTO `job_grades` VALUES ('268', 'biker', '1', 'experimente', 'Prépa Custom', '850', '{}', '{}');
INSERT INTO `job_grades` VALUES ('269', 'biker', '2', 'chief', 'Chef Mécano', '950', '{}', '{}');
INSERT INTO `job_grades` VALUES ('270', 'biker', '3', 'boss', 'Boss', '1000', '{}', '{}');
INSERT INTO `job_grades` VALUES ('273', 'gouv', '2', 'marshall', 'Marshall', '1800', '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":2,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"glasses\":0,\"decals_1\":8,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"torso_2\":0,\"arms\":41,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"hair_2\":3,\"decals_2\":2,\"hair_color_2\":0,\"hair_color_1\":10,\"helmet_2\":0,\"face\":21,\"shoes\":24,\"torso_2\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"decals_1\":7,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}');
INSERT INTO `job_grades` VALUES ('280', 'gouv', '4', 'senateur', 'Sénateur', '2200', '{}', '{}');

-- ----------------------------
-- Table structure for licenses
-- ----------------------------
DROP TABLE IF EXISTS `licenses`;
CREATE TABLE `licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of licenses
-- ----------------------------
INSERT INTO `licenses` VALUES ('1', 'fisher', 'License de Pêche');
INSERT INTO `licenses` VALUES ('2', 'hunt', 'License de Châsse');
INSERT INTO `licenses` VALUES ('3', 'drive_bike', 'Permis moto');
INSERT INTO `licenses` VALUES ('4', 'weapon', 'Permis Port d\'armes');
INSERT INTO `licenses` VALUES ('5', 'drive_truck', 'Permis Camion');
INSERT INTO `licenses` VALUES ('6', 'dmv', 'Code la route');
INSERT INTO `licenses` VALUES ('7', 'drive', 'Permis de Voiture');
INSERT INTO `licenses` VALUES ('8', 'licenseweed', 'License de Weed');
INSERT INTO `licenses` VALUES ('9', 'licensecoke', 'License de Coke');
INSERT INTO `licenses` VALUES ('10', 'licensemeth', 'License de Meth');
INSERT INTO `licenses` VALUES ('11', 'licenseopium', 'License d\'Opium');

-- ----------------------------
-- Table structure for moneywash
-- ----------------------------
DROP TABLE IF EXISTS `moneywash`;
CREATE TABLE `moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of moneywash
-- ----------------------------

-- ----------------------------
-- Table structure for open_car
-- ----------------------------
DROP TABLE IF EXISTS `open_car`;
CREATE TABLE `open_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `got` varchar(50) DEFAULT NULL,
  `NB` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3134 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of open_car
-- ----------------------------

-- ----------------------------
-- Table structure for owned_properties
-- ----------------------------
DROP TABLE IF EXISTS `owned_properties`;
CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of owned_properties
-- ----------------------------

-- ----------------------------
-- Table structure for owned_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `owned_vehicles`;
CREATE TABLE `owned_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Etat de la voiture',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=930 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of owned_vehicles
-- ----------------------------

-- ----------------------------
-- Table structure for peage_flash
-- ----------------------------
DROP TABLE IF EXISTS `peage_flash`;
CREATE TABLE `peage_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(10) NOT NULL,
  `speed` int(11) NOT NULL,
  `modele` varchar(25) NOT NULL,
  `station` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=563 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of peage_flash
-- ----------------------------

-- ----------------------------
-- Table structure for phone_messages
-- ----------------------------
DROP TABLE IF EXISTS `phone_messages`;
CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5647 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of phone_messages
-- ----------------------------

-- ----------------------------
-- Table structure for phone_users_contacts
-- ----------------------------
DROP TABLE IF EXISTS `phone_users_contacts`;
CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `number` varchar(10) NOT NULL,
  `display` varchar(64) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=467 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of phone_users_contacts
-- ----------------------------

-- ----------------------------
-- Table structure for playerstattoos
-- ----------------------------
DROP TABLE IF EXISTS `playerstattoos`;
CREATE TABLE `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` varchar(9999) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of playerstattoos
-- ----------------------------

-- ----------------------------
-- Table structure for properties
-- ----------------------------
DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of properties
-- ----------------------------
INSERT INTO `properties` VALUES ('1', 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', null, '1', '1', '0', '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', '1500000');
INSERT INTO `properties` VALUES ('2', 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":-86.347,\"y\":834.488,\"z\":235.723}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":-88.582,\"y\":834.497,\"z\":235.723}', '[]', null, '1', '1', '0', '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', '1500000');
INSERT INTO `properties` VALUES ('3', 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', null, '1', '1', '0', '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', '1700000');
INSERT INTO `properties` VALUES ('4', 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', null, '1', '1', '0', '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', '1500000');
INSERT INTO `properties` VALUES ('5', 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', null, '1', '1', '0', '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', '1500000');
INSERT INTO `properties` VALUES ('6', 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', null, '1', '1', '0', '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', '1500000');
INSERT INTO `properties` VALUES ('7', 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', null, '1', '1', '0', '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', '562500');
INSERT INTO `properties` VALUES ('8', 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', null, '1', '1', '0', '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', '1500000');
INSERT INTO `properties` VALUES ('9', 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', null, '1', '1', '0', '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', '1500000');
INSERT INTO `properties` VALUES ('10', 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', null, '1', '1', '0', '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', '1500000');
INSERT INTO `properties` VALUES ('11', 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', null, '1', '1', '0', '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', '1700000');
INSERT INTO `properties` VALUES ('12', 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', null, null, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('13', 'Modern1Apartment', 'Appartement Moderne 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('14', 'Modern2Apartment', 'Appartement Moderne 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('15', 'Modern3Apartment', 'Appartement Moderne 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', '1300000');
INSERT INTO `properties` VALUES ('16', 'Mody1Apartment', 'Appartement Mode 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('17', 'Mody2Apartment', 'Appartement Mode 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('18', 'Mody3Apartment', 'Appartement Mode 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('19', 'Vibrant1Apartment', 'Appartement Vibrant 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('20', 'Vibrant2Apartment', 'Appartement Vibrant 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('21', 'Vibrant3Apartment', 'Appartement Vibrant 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('22', 'Sharp1Apartment', 'Appartement Persan 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('23', 'Sharp2Apartment', 'Appartement Persan 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('24', 'Sharp3Apartment', 'Appartement Persan 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('25', 'Monochrome1Apartment', 'Appartement Monochrome 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('26', 'Monochrome2Apartment', 'Appartement Monochrome 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('27', 'Monochrome3Apartment', 'Appartement Monochrome 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('28', 'Seductive1Apartment', 'Appartement Séduisant 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('29', 'Seductive2Apartment', 'Appartement Séduisant 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('30', 'Seductive3Apartment', 'Appartement Séduisant 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', '1300000');
INSERT INTO `properties` VALUES ('31', 'Regal1Apartment', 'Appartement Régal 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('32', 'Regal2Apartment', 'Appartement Régal 2', null, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('33', 'Regal3Apartment', 'Appartement Régal 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', '1300000');
INSERT INTO `properties` VALUES ('34', 'Aqua1Apartment', 'Appartement Aqua 1', null, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', null, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', '1300000');
INSERT INTO `properties` VALUES ('35', 'Aqua2Apartment', 'Appartement Aqua 2', null, '{\"x\":-{\"x\":1391.796,\"y\":1132.472,\"z\":114.133}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', null, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', '1300000');
INSERT INTO `properties` VALUES ('36', 'Aqua3Apartment', 'Appartement Aqua 3', null, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', null, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', '0', '1', '0', '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', '1300000');
INSERT INTO `properties` VALUES ('37', 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', null, null, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('38', 'IntegrityWay28', '4 Integrity Way - Apt 28', null, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', null, '[]', 'IntegrityWay', '0', '1', '0', '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', '1700000');
INSERT INTO `properties` VALUES ('39', 'IntegrityWay30', '4 Integrity Way - Apt 30', null, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', null, '[]', 'IntegrityWay', '0', '1', '0', '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', '1700000');
INSERT INTO `properties` VALUES ('40', 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', null, null, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('41', 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', null, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', null, '[]', 'DellPerroHeights', '0', '1', '0', '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', '1700000');
INSERT INTO `properties` VALUES ('42', 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', null, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', null, '[]', 'DellPerroHeights', '0', '1', '0', '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', '1700000');
INSERT INTO `properties` VALUES ('43', 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', null, null, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('44', 'OldSpiceWarm', 'Old Spice Warm', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('45', 'OldSpiceClassical', 'Old Spice Classical', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('46', 'OldSpiceVintage', 'Old Spice Vintage', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('47', 'ExecutiveRich', 'Executive Rich', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('48', 'ExecutiveCool', 'Executive Cool', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('49', 'ExecutiveContrast', 'Executive Contrast', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('50', 'PowerBrokerIce', 'Power Broker Ice', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('51', 'PowerBrokerConservative', 'Power Broker Conservative', null, '', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('52', 'PowerBrokerPolished', 'Power Broker Polished', null, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', null, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', '0', '1', '0', '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', '5000000');
INSERT INTO `properties` VALUES ('53', 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', null, null, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('54', 'LBOldSpiceWarm', 'LB Old Spice Warm', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_01a\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('55', 'LBOldSpiceClassical', 'LB Old Spice Classical', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_01b\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('56', 'LBOldSpiceVintage', 'LB Old Spice Vintage', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_01c\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('57', 'LBExecutiveRich', 'LB Executive Rich', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_02b\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('58', 'LBExecutiveCool', 'LB Executive Cool', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_02c\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('59', 'LBExecutiveContrast', 'LB Executive Contrast', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_02a\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('60', 'LBPowerBrokerIce', 'LB Power Broker Ice', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_03a\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('61', 'LBPowerBrokerConservative', 'LB Power Broker Conservative', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_03b\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('62', 'LBPowerBrokerPolished', 'LB Power Broker Polished', null, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', null, '[\"ex_sm_13_office_03c\"]', 'LomBank', '0', '1', '0', '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', '3500000');
INSERT INTO `properties` VALUES ('63', 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', null, null, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', null, '0', '0', '1', null, '0');
INSERT INTO `properties` VALUES ('64', 'MBWOldSpiceWarm', 'MBW Old Spice Warm', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('65', 'MBWOldSpiceClassical', 'MBW Old Spice Classical', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('66', 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('67', 'MBWExecutiveRich', 'MBW Executive Rich', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('68', 'MBWExecutiveCool', 'MBW Executive Cool', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('69', 'MBWExecutive Contrast', 'MBW Executive Contrast', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('70', 'MBWPowerBrokerIce', 'MBW Power Broker Ice', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('71', 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('72', 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', null, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', null, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', '0', '1', '0', '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', '2700000');
INSERT INTO `properties` VALUES ('73', 'PinelliHouse', 'Pinelli House', '{\"x\":1395.132,\"y\":1141.703,\"z\":113.8}', '{\"x\":1396.557,\"y\":1138.096,\"z\":113.8},', '{\"x\":1397.457,\"y\":1136.096,\"z\":114.1},', '{\"x\":1391.703,\"y\":1141.747,\"z\":114.3}', '[]', null, '1', '1', '0', '{\"x\":1398.701,\"y\":1156.917,\"z\":113.8}', '850000');

-- ----------------------------
-- Table structure for rented_vehicles
-- ----------------------------
DROP TABLE IF EXISTS `rented_vehicles`;
CREATE TABLE `rented_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rented_vehicles
-- ----------------------------
INSERT INTO `rented_vehicles` VALUES ('4', 'dominator', 'LOC VVVY', 'David Flash', '35000', '0', 'steam:110000112a8ab79');

-- ----------------------------
-- Table structure for rented_vehicles_pub
-- ----------------------------
DROP TABLE IF EXISTS `rented_vehicles_pub`;
CREATE TABLE `rented_vehicles_pub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rented_vehicles_pub
-- ----------------------------

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=620 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shops
-- ----------------------------
INSERT INTO `shops` VALUES ('37', 'UpgradeArmesPolice', 'TINT_05', '500', 'item_standard');
INSERT INTO `shops` VALUES ('67', 'UpgradeArmesPolice', 'COMPONENT_AT_PI_FLSH', '500', 'item_standard');
INSERT INTO `shops` VALUES ('66', 'UpgradeArmesPolice', 'COMPONENT_AT_AR_FLSH', '500', 'item_standard');
INSERT INTO `shops` VALUES ('65', 'UpgradeArmesPolice', 'COMPONENT_AT_AR_AFGRIP', '500', 'item_standard');
INSERT INTO `shops` VALUES ('64', 'UpgradeArmesPolice', 'COMPONENT_AT_SCOPE_MACRO', '500', 'item_standard');
INSERT INTO `shops` VALUES ('62', 'UpgradeArmesPolice', 'COMPONENT_AT_AR_CLIP_02', '500', 'item_standard');
INSERT INTO `shops` VALUES ('63', 'UpgradeArmesPolice', 'COMPONENT_AT_PI_CLIP_02', '500', 'item_standard');
INSERT INTO `shops` VALUES ('61', 'UpgradeArmesPolice', 'COMPONENT_AT_PI_SUPP', '500', 'item_standard');
INSERT INTO `shops` VALUES ('60', 'UpgradeArmesPolice', 'COMPONENT_AT_PI_SUPP', '500', 'item_standard');
INSERT INTO `shops` VALUES ('605', 'LTDgasoline', 'redbull', '90', 'item_standard');
INSERT INTO `shops` VALUES ('606', 'TwentyFourSeven', 'redbull', '90', 'item_standard');
INSERT INTO `shops` VALUES ('604', 'RobsLiquor', 'redbull', '90', 'item_standard');
INSERT INTO `shops` VALUES ('602', 'TwentyFourSeven', 'coffee', '70', 'item_standard');
INSERT INTO `shops` VALUES ('603', 'RobsLiquor', 'eaugazifie', '60', 'item_standard');
INSERT INTO `shops` VALUES ('601', 'RobsLiquor', 'coffee', '70', 'item_standard');
INSERT INTO `shops` VALUES ('599', 'LTDgasoline', 'cigaret', '45', 'item_standard');
INSERT INTO `shops` VALUES ('600', 'TwentyFourSeven', 'cigaret', '45', 'item_standard');
INSERT INTO `shops` VALUES ('598', 'TwentyFourSeven', 'parapluie', '1500', 'item_standard');
INSERT INTO `shops` VALUES ('595', 'TwentyFourSeven', 'rose', '800', 'item_standard');
INSERT INTO `shops` VALUES ('596', 'TwentyFourSeven', 'notepad', '1000', 'item_standard');
INSERT INTO `shops` VALUES ('597', 'LTDgasoline', 'parapluie', '1000', 'item_standard');
INSERT INTO `shops` VALUES ('592', 'RobsLiquor', 'pepsi', '80', 'item_standard');
INSERT INTO `shops` VALUES ('593', 'RobsLiquor', 'fanta', '80', 'item_standard');
INSERT INTO `shops` VALUES ('594', 'RobsLiquor', 'orangina', '80', 'item_standard');
INSERT INTO `shops` VALUES ('589', 'RobsLiquor', 'soda', '80', 'item_standard');
INSERT INTO `shops` VALUES ('590', 'RobsLiquor', '7up', '80', 'item_standard');
INSERT INTO `shops` VALUES ('591', 'RobsLiquor', 'sprite', '80', 'item_standard');
INSERT INTO `shops` VALUES ('587', 'TwentyFourSeven', 'chocolate', '90', 'item_standard');
INSERT INTO `shops` VALUES ('588', 'LTDgasoline', 'chocolate', '90', 'item_standard');
INSERT INTO `shops` VALUES ('81', 'ShopLicense', 'licenseopium', '450000', 'item_license');
INSERT INTO `shops` VALUES ('80', 'ShopLicense', 'licensemeth', '320000', 'item_license');
INSERT INTO `shops` VALUES ('79', 'ShopLicense', 'licensecoke', '240000', 'item_license');
INSERT INTO `shops` VALUES ('78', 'ShopLicense', 'licenseweed', '100000', 'item_license');
INSERT INTO `shops` VALUES ('55', 'TwentyFourSeven', 'sandwich', '80', 'item_standard');
INSERT INTO `shops` VALUES ('54', 'RobsLiquor', 'sandwich', '80', 'item_standard');
INSERT INTO `shops` VALUES ('53', 'LTDgasoline', 'sandwich', '80', 'item_standard');
INSERT INTO `shops` VALUES ('51', 'UpgradeArmes', 'COMPONENT_REVOLVER_VARMOD_BOSS', '650', 'item_standard');
INSERT INTO `shops` VALUES ('52', 'UpgradeArmes', 'COMPONENT_REVOLVER_VARMOD_GOON', '650', 'item_standard');
INSERT INTO `shops` VALUES ('50', 'UpgradeArmes', 'COMPONENT_SWITCHBLADE_VARMOD_VAR2', '400', 'item_standard');
INSERT INTO `shops` VALUES ('17', 'LTDgasoline', 'fishing_rod', '1500', 'item_standard');
INSERT INTO `shops` VALUES ('16', 'RobsLiquor', 'fishing_rod', '1500', 'item_standard');
INSERT INTO `shops` VALUES ('15', 'TwentyFourSeven', 'fishing_rod', '1500', 'item_standard');
INSERT INTO `shops` VALUES ('34', 'UpgradeArmes', 'COMPONENT_AT_PI_FLSH', '850', 'item_standard');
INSERT INTO `shops` VALUES ('33', 'UpgradeArmes', 'COMPONENT_AT_PI_CLIP_02', '2500', 'item_standard');
INSERT INTO `shops` VALUES ('32', 'UpgradeArmes', 'COMPONENT_AT_AR_CLIP_02', '4500', 'item_standard');
INSERT INTO `shops` VALUES ('10', 'LTDgasoline', 'gps', '1000', 'item_standard');
INSERT INTO `shops` VALUES ('35', 'UpgradeArmes', 'TINT_02', '1000', 'item_standard');
INSERT INTO `shops` VALUES ('1', 'LTDgasoline', 'bread', '60', 'item_standard');
INSERT INTO `shops` VALUES ('2', 'LTDgasoline', 'water', '60', 'item_standard');
INSERT INTO `shops` VALUES ('8', 'TwentyFourSeven', 'gps', '1000', 'item_standard');
INSERT INTO `shops` VALUES ('3', 'RobsLiquor', 'water', '60', 'item_standard');
INSERT INTO `shops` VALUES ('4', 'TwentyFourSeven', 'bread', '60', 'item_standard');
INSERT INTO `shops` VALUES ('5', 'TwentyFourSeven', 'water', '60', 'item_standard');
INSERT INTO `shops` VALUES ('6', 'RobsLiquor', 'bread', '60', 'item_standard');
INSERT INTO `shops` VALUES ('47', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_KING', '500', 'item_standard');
INSERT INTO `shops` VALUES ('48', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_BALLAS', '500', 'item_standard');
INSERT INTO `shops` VALUES ('45', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_DIAMOND', '500', 'item_standard');
INSERT INTO `shops` VALUES ('41', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_LOVE', '500', 'item_standard');
INSERT INTO `shops` VALUES ('42', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_DOLLAR', '500', 'item_standard');
INSERT INTO `shops` VALUES ('49', 'UpgradeArmes', 'COMPONENT_SWITCHBLADE_VARMOD_VAR1', '400', 'item_standard');
INSERT INTO `shops` VALUES ('46', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_PIMP', '500', 'item_standard');
INSERT INTO `shops` VALUES ('43', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_VAGOS', '500', 'item_standard');
INSERT INTO `shops` VALUES ('44', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_HATE', '500', 'item_standard');
INSERT INTO `shops` VALUES ('40', 'UpgradeArmes', 'COMPONENT_KNUCKLE_VARMOD_PLAYER', '500', 'item_standard');
INSERT INTO `shops` VALUES ('39', 'UpgradeArmes', 'COMPONENT_VARMOD_LUXE', '1500', 'item_standard');
INSERT INTO `shops` VALUES ('38', 'UpgradeArmes', 'COMPONENT_VARMOD_LOWRIDER', '500', 'item_standard');
INSERT INTO `shops` VALUES ('68', 'UpgradeArmesPolice', 'clip', '450', 'item_standard');
INSERT INTO `shops` VALUES ('36', 'UpgradeArmes', 'TINT_03', '850', 'item_standard');
INSERT INTO `shops` VALUES ('31', 'UpgradeArmesPolice', 'bullet4', '2500', 'item_standard');
INSERT INTO `shops` VALUES ('30', 'UpgradeArmes', 'COMPONENT_AT_AR_SUPP_02', '1500', 'item_standard');
INSERT INTO `shops` VALUES ('29', 'UpgradeArmes', 'COMPONENT_AT_PI_SUPP', '1500', 'item_standard');
INSERT INTO `shops` VALUES ('28', 'UpgradeArmes', 'bullet3', '8500', 'item_standard');
INSERT INTO `shops` VALUES ('27', 'UpgradeArmes', 'bullet2', '6500', 'item_standard');
INSERT INTO `shops` VALUES ('26', 'UpgradeArmes', 'bullet1', '4500', 'item_standard');
INSERT INTO `shops` VALUES ('25', 'UpgradeArmes', 'clip', '450', 'item_standard');
INSERT INTO `shops` VALUES ('100', 'TwentyFourSeven', 'tel', '500', 'item_standard');
INSERT INTO `shops` VALUES ('101', 'UpgradeArmesPolice', 'jumelles', '500', 'item_standard');
INSERT INTO `shops` VALUES ('102', 'UpgradeArmes', 'jumelles', '750', 'item_standard');
INSERT INTO `shops` VALUES ('74', 'ShopAero', 'bread', '60', 'item_standard');
INSERT INTO `shops` VALUES ('75', 'ShopAero', 'water', '60', 'item_standard');
INSERT INTO `shops` VALUES ('76', 'ShopAero', 'gps', '1000', 'item_standard');
INSERT INTO `shops` VALUES ('77', 'ShopAero', 'tel', '500', 'item_standard');
INSERT INTO `shops` VALUES ('90', 'TwentyFourSeven', 'hunt', '5000', 'item_license');
INSERT INTO `shops` VALUES ('91', 'TwentyFourSeven', 'fisher', '5000', 'item_license');

-- ----------------------------
-- Table structure for society_moneywash
-- ----------------------------
DROP TABLE IF EXISTS `society_moneywash`;
CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of society_moneywash
-- ----------------------------

-- ----------------------------
-- Table structure for truck_inventory
-- ----------------------------
DROP TABLE IF EXISTS `truck_inventory`;
CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `itemt` varchar(50) DEFAULT NULL,
  `owned` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `item` (`item`,`plate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of truck_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `isDead` int(11) NOT NULL DEFAULT '0',
  `skin` longtext COLLATE utf8mb4_bin,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT '0',
  `faction` varchar(255) COLLATE utf8mb4_bin DEFAULT 'resid',
  `faction_grade` int(11) NOT NULL DEFAULT '0',
  `loadout` longtext COLLATE utf8mb4_bin,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin,
  `gunlicense` int(1) NOT NULL DEFAULT '0',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `crypted_phone_number` int(11) DEFAULT NULL,
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for user_accounts
-- ----------------------------
DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for user_appartement
-- ----------------------------
DROP TABLE IF EXISTS `user_appartement`;
CREATE TABLE `user_appartement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `dirtymoney` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_appartement
-- ----------------------------

-- ----------------------------
-- Table structure for user_contacts
-- ----------------------------
DROP TABLE IF EXISTS `user_contacts`;
CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_contacts
-- ----------------------------

-- ----------------------------
-- Table structure for user_inventory
-- ----------------------------
DROP TABLE IF EXISTS `user_inventory`;
CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=32463 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for user_licenses
-- ----------------------------
DROP TABLE IF EXISTS `user_licenses`;
CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_licenses
-- ----------------------------

-- ----------------------------
-- Table structure for user_parkings
-- ----------------------------
DROP TABLE IF EXISTS `user_parkings`;
CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_parkings
-- ----------------------------

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10031 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of vehicles
-- ----------------------------
INSERT INTO `vehicles` VALUES ('1', 'Blade', 'blade', '15000', 'muscle');
INSERT INTO `vehicles` VALUES ('2', 'Buccaneer', 'buccaneer', '18000', 'muscle');
INSERT INTO `vehicles` VALUES ('3', 'Buccaneer Rider', 'buccaneer2', '24000', 'muscle');
INSERT INTO `vehicles` VALUES ('4', 'Chino', 'chino', '15000', 'muscle');
INSERT INTO `vehicles` VALUES ('5', 'Chino Luxe', 'chino2', '19000', 'muscle');
INSERT INTO `vehicles` VALUES ('6', 'Coquette BlackFin', 'coquette3', '55000', 'muscle');
INSERT INTO `vehicles` VALUES ('7', 'Dominator', 'dominator', '35000', 'muscle');
INSERT INTO `vehicles` VALUES ('8', 'Dukes', 'dukes', '28000', 'muscle');
INSERT INTO `vehicles` VALUES ('9', 'Gauntlet', 'gauntlet', '30000', 'muscle');
INSERT INTO `vehicles` VALUES ('10', 'Hotknife', 'hotknife', '125000', 'muscle');
INSERT INTO `vehicles` VALUES ('11', 'Faction', 'faction', '20000', 'muscle');
INSERT INTO `vehicles` VALUES ('12', 'Faction Rider', 'faction2', '30000', 'muscle');
INSERT INTO `vehicles` VALUES ('13', 'Faction XL', 'faction3', '40000', 'muscle');
INSERT INTO `vehicles` VALUES ('14', 'Nightshade', 'nightshade', '65000', 'muscle');
INSERT INTO `vehicles` VALUES ('15', 'Phoenix', 'phoenix', '12500', 'muscle');
INSERT INTO `vehicles` VALUES ('16', 'Picador', 'picador', '18000', 'muscle');
INSERT INTO `vehicles` VALUES ('17', 'Sabre Turbo', 'sabregt', '20000', 'muscle');
INSERT INTO `vehicles` VALUES ('18', 'Sabre GT', 'sabregt2', '25000', 'muscle');
INSERT INTO `vehicles` VALUES ('19', 'Slam Van', 'slamvan3', '11500', 'muscle');
INSERT INTO `vehicles` VALUES ('20', 'Tampa', 'tampa', '16000', 'muscle');
INSERT INTO `vehicles` VALUES ('21', 'Virgo', 'virgo', '14000', 'muscle');
INSERT INTO `vehicles` VALUES ('22', 'Vigero', 'vigero', '12500', 'muscle');
INSERT INTO `vehicles` VALUES ('23', 'Voodoo', 'voodoo', '7200', 'muscle');
INSERT INTO `vehicles` VALUES ('29', 'Bison', 'bison', '45000', 'vans');
INSERT INTO `vehicles` VALUES ('30', 'Bobcat XL', 'bobcatxl', '32000', 'vans');
INSERT INTO `vehicles` VALUES ('31', 'Burrito', 'burrito3', '19000', 'vans');
INSERT INTO `vehicles` VALUES ('32', 'Burrito', 'gburrito2', '29000', 'vans');
INSERT INTO `vehicles` VALUES ('33', 'Camper', 'camper', '42000', 'vans');
INSERT INTO `vehicles` VALUES ('34', 'Gang Burrito', 'gburrito', '45000', 'vans');
INSERT INTO `vehicles` VALUES ('35', 'Journey', 'journey', '6500', 'vans');
INSERT INTO `vehicles` VALUES ('36', 'Minivan', 'minivan', '13000', 'vans');
INSERT INTO `vehicles` VALUES ('37', 'Moonbeam', 'moonbeam', '18000', 'vans');
INSERT INTO `vehicles` VALUES ('38', 'Moonbeam Rider', 'moonbeam2', '35000', 'vans');
INSERT INTO `vehicles` VALUES ('39', 'Paradise', 'paradise', '19000', 'vans');
INSERT INTO `vehicles` VALUES ('40', 'Rumpo', 'rumpo', '15000', 'vans');
INSERT INTO `vehicles` VALUES ('41', 'Rumpo Trail', 'rumpo3', '19500', 'vans');
INSERT INTO `vehicles` VALUES ('42', 'Surfer', 'surfer', '12000', 'vans');
INSERT INTO `vehicles` VALUES ('43', 'Youga', 'youga', '10800', 'vans');
INSERT INTO `vehicles` VALUES ('44', 'Youga Luxuary', 'youga2', '14500', 'vans');
INSERT INTO `vehicles` VALUES ('60', 'Baller', 'baller2', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('61', 'Baller Sport', 'baller3', '60000', 'suvs');
INSERT INTO `vehicles` VALUES ('62', 'Cavalcade', 'cavalcade2', '55000', 'suvs');
INSERT INTO `vehicles` VALUES ('63', 'Contender', 'contender', '70000', 'suvs');
INSERT INTO `vehicles` VALUES ('64', 'Dubsta', 'dubsta', '45000', 'suvs');
INSERT INTO `vehicles` VALUES ('65', 'Dubsta Luxuary', 'dubsta2', '60000', 'suvs');
INSERT INTO `vehicles` VALUES ('66', 'Fhantom', 'fq2', '17000', 'suvs');
INSERT INTO `vehicles` VALUES ('67', 'Grabger', 'granger', '50000', 'suvs');
INSERT INTO `vehicles` VALUES ('68', 'Gresley', 'gresley', '47500', 'suvs');
INSERT INTO `vehicles` VALUES ('69', 'Huntley S', 'huntley', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('70', 'Landstalker', 'landstalker', '35000', 'suvs');
INSERT INTO `vehicles` VALUES ('71', 'Mesa', 'mesa', '16000', 'suvs');
INSERT INTO `vehicles` VALUES ('72', 'Mesa Trail', 'mesa3', '40000', 'suvs');
INSERT INTO `vehicles` VALUES ('73', 'Patriot', 'patriot', '55000', 'suvs');
INSERT INTO `vehicles` VALUES ('74', 'Radius', 'radi', '29000', 'suvs');
INSERT INTO `vehicles` VALUES ('75', 'Rocoto', 'rocoto', '45000', 'suvs');
INSERT INTO `vehicles` VALUES ('76', 'Seminole', 'seminole', '25000', 'suvs');
INSERT INTO `vehicles` VALUES ('77', 'XLS', 'xls', '32000', 'suvs');
INSERT INTO `vehicles` VALUES ('78', 'Btype', 'btype', '62000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('79', 'Btype Luxe', 'btype3', '85000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('80', 'Btype Hotroad', 'btype2', '155000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('81', 'Casco', 'casco', '30000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('82', 'Coquette Classic', 'coquette2', '40000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('83', 'Manana', 'manana', '12800', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('84', 'Monroe', 'monroe', '55000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('85', 'Pigalle', 'pigalle', '20000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('86', 'Stinger', 'stinger', '80000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('87', 'Stinger GT', 'stingergt', '75000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('88', 'Stirling GT', 'feltzer3', '65000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('89', 'Z-Type', 'ztype', '220000', 'sportsclassics');
INSERT INTO `vehicles` VALUES ('90', 'Bifta', 'bifta', '12000', 'offroad');
INSERT INTO `vehicles` VALUES ('91', 'Bf Injection', 'bfinjection', '16000', 'offroad');
INSERT INTO `vehicles` VALUES ('92', 'Blazer', 'blazer', '6500', 'offroad');
INSERT INTO `vehicles` VALUES ('93', 'Blazer Sport', 'blazer4', '8500', 'offroad');
INSERT INTO `vehicles` VALUES ('94', 'Brawler', 'brawler', '45000', 'offroad');
INSERT INTO `vehicles` VALUES ('95', 'Bubsta 6x6', 'dubsta3', '120000', 'offroad');
INSERT INTO `vehicles` VALUES ('96', 'Dune Buggy', 'dune', '8000', 'offroad');
INSERT INTO `vehicles` VALUES ('97', 'Guardian', 'guardian', '45000', 'offroad');
INSERT INTO `vehicles` VALUES ('98', 'Rebel', 'rebel2', '35000', 'offroad');
INSERT INTO `vehicles` VALUES ('99', 'Sandking', 'sandking', '55000', 'offroad');
INSERT INTO `vehicles` VALUES ('100', 'The Liberator', 'monster', '210000', 'offroad');
INSERT INTO `vehicles` VALUES ('101', 'Trophy Truck', 'trophytruck', '60000', 'offroad');
INSERT INTO `vehicles` VALUES ('102', 'Trophy Truck Limited', 'trophytruck2', '80000', 'offroad');
INSERT INTO `vehicles` VALUES ('103', 'Cognoscenti Cabrio', 'cogcabrio', '55000', 'coupes');
INSERT INTO `vehicles` VALUES ('104', 'Exemplar', 'exemplar', '32000', 'coupes');
INSERT INTO `vehicles` VALUES ('105', 'F620', 'f620', '40000', 'coupes');
INSERT INTO `vehicles` VALUES ('106', 'Felon', 'felon', '42000', 'coupes');
INSERT INTO `vehicles` VALUES ('107', 'Felon GT', 'felon2', '55000', 'coupes');
INSERT INTO `vehicles` VALUES ('108', 'Jackal', 'jackal', '38000', 'coupes');
INSERT INTO `vehicles` VALUES ('109', 'Oracle XS', 'oracle2', '35000', 'coupes');
INSERT INTO `vehicles` VALUES ('110', 'Sentinel', 'sentinel', '32000', 'coupes');
INSERT INTO `vehicles` VALUES ('111', 'Sentinel XS', 'sentinel2', '40000', 'coupes');
INSERT INTO `vehicles` VALUES ('112', 'Windsor', 'windsor', '95000', 'coupes');
INSERT INTO `vehicles` VALUES ('113', 'Windsor Drop', 'windsor2', '125000', 'coupes');
INSERT INTO `vehicles` VALUES ('114', 'Zion', 'zion', '36000', 'coupes');
INSERT INTO `vehicles` VALUES ('115', 'Zion Cabrio', 'zion2', '45000', 'coupes');
INSERT INTO `vehicles` VALUES ('116', '9F', 'ninef', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('117', '9F Cabrio', 'ninef2', '80000', 'sports');
INSERT INTO `vehicles` VALUES ('118', 'Alpha', 'alpha', '60000', 'sports');
INSERT INTO `vehicles` VALUES ('119', 'Banshee', 'banshee', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('120', 'Bestia GTS', 'bestiagts', '55000', 'sports');
INSERT INTO `vehicles` VALUES ('121', 'Buffalo', 'buffalo', '12000', 'sports');
INSERT INTO `vehicles` VALUES ('122', 'Buffalo S', 'buffalo2', '20000', 'sports');
INSERT INTO `vehicles` VALUES ('123', 'Carbonizzare', 'carbonizzare', '75000', 'sports');
INSERT INTO `vehicles` VALUES ('124', 'Comet', 'comet2', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('125', 'Coquette', 'coquette', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('126', 'Drift Tampa', 'tampa2', '80000', 'sports');
INSERT INTO `vehicles` VALUES ('127', 'Elegy', 'elegy2', '38500', 'sports');
INSERT INTO `vehicles` VALUES ('128', 'Feltzer', 'feltzer2', '55000', 'sports');
INSERT INTO `vehicles` VALUES ('129', 'Furore GT', 'furoregt', '45000', 'sports');
INSERT INTO `vehicles` VALUES ('130', 'Fusilade', 'fusilade', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('131', 'Jester', 'jester', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('132', 'Jester(Racecar)', 'jester2', '135000', 'sports');
INSERT INTO `vehicles` VALUES ('133', 'Khamelion', 'khamelion', '38000', 'sports');
INSERT INTO `vehicles` VALUES ('134', 'Kuruma', 'kuruma', '30000', 'sports');
INSERT INTO `vehicles` VALUES ('135', 'Lynx', 'lynx', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('136', 'Mamba', 'mamba', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('137', 'Massacro', 'massacro', '65000', 'sports');
INSERT INTO `vehicles` VALUES ('138', 'Massacro(Racecar)', 'massacro2', '130000', 'sports');
INSERT INTO `vehicles` VALUES ('139', 'Omnis', 'omnis', '35000', 'sports');
INSERT INTO `vehicles` VALUES ('140', 'Penumbra', 'penumbra', '28000', 'sports');
INSERT INTO `vehicles` VALUES ('141', 'Rapid GT', 'rapidgt', '35000', 'sports');
INSERT INTO `vehicles` VALUES ('142', 'Rapid GT Convertible', 'rapidgt2', '45000', 'sports');
INSERT INTO `vehicles` VALUES ('143', 'Schafter V12', 'schafter3', '50000', 'sports');
INSERT INTO `vehicles` VALUES ('144', 'Seven 70', 'seven70', '39500', 'sports');
INSERT INTO `vehicles` VALUES ('145', 'Sultan', 'sultan', '15000', 'sports');
INSERT INTO `vehicles` VALUES ('146', 'Surano', 'surano', '50000', 'sports');
INSERT INTO `vehicles` VALUES ('147', 'Tropos', 'tropos', '40000', 'sports');
INSERT INTO `vehicles` VALUES ('148', 'Verlierer', 'verlierer2', '70000', 'sports');
INSERT INTO `vehicles` VALUES ('149', 'Adder', 'adder', '900000', 'super');
INSERT INTO `vehicles` VALUES ('150', 'Banshee 900R', 'banshee2', '255000', 'super');
INSERT INTO `vehicles` VALUES ('151', 'Bullet', 'bullet', '90000', 'super');
INSERT INTO `vehicles` VALUES ('152', 'Cheetah', 'cheetah', '480000', 'super');
INSERT INTO `vehicles` VALUES ('153', 'Entity XF', 'entityxf', '500000', 'super');
INSERT INTO `vehicles` VALUES ('154', 'ETR1', 'sheava', '220000', 'super');
INSERT INTO `vehicles` VALUES ('155', 'FMJ', 'fmj', '200000', 'super');
INSERT INTO `vehicles` VALUES ('156', 'Infernus', 'infernus', '180000', 'super');
INSERT INTO `vehicles` VALUES ('157', 'Osiris', 'osiris', '160000', 'super');
INSERT INTO `vehicles` VALUES ('158', 'Pfister', 'pfister811', '85000', 'super');
INSERT INTO `vehicles` VALUES ('159', 'RE-7B', 'le7b', '325000', 'super');
INSERT INTO `vehicles` VALUES ('160', 'Reaper', 'reaper', '150000', 'super');
INSERT INTO `vehicles` VALUES ('161', 'Sultan RS', 'sultanrs', '65000', 'super');
INSERT INTO `vehicles` VALUES ('162', 'T20', 't20', '300000', 'super');
INSERT INTO `vehicles` VALUES ('163', 'Turismo R', 'turismor', '350000', 'super');
INSERT INTO `vehicles` VALUES ('164', 'Tyrus', 'tyrus', '600000', 'super');
INSERT INTO `vehicles` VALUES ('165', 'Vacca', 'vacca', '120000', 'super');
INSERT INTO `vehicles` VALUES ('166', 'Voltic', 'voltic', '90000', 'super');
INSERT INTO `vehicles` VALUES ('167', 'X80 Proto', 'prototipo', '1750000', 'super');
INSERT INTO `vehicles` VALUES ('168', 'Zentorno', 'zentorno', '1200000', 'super');
INSERT INTO `vehicles` VALUES ('10003', 'Elegy R32', 'elegy', '55000', 'special');
INSERT INTO `vehicles` VALUES ('10008', 'GP 1', 'gp1', '225000', 'special');
INSERT INTO `vehicles` VALUES ('10009', 'Infernus 2', 'infernus2', '200000', 'special');
INSERT INTO `vehicles` VALUES ('10011', 'Ruston', 'ruston', '220000', 'special');
INSERT INTO `vehicles` VALUES ('10016', 'Specter Custom', 'specter2', '125000', 'special');
INSERT INTO `vehicles` VALUES ('10017', 'Specter', 'specter', '95000', 'special');
INSERT INTO `vehicles` VALUES ('10018', 'Nero Custom', 'nero2', '250000', 'special');
INSERT INTO `vehicles` VALUES ('10019', 'Nero', 'nero', '185000', 'special');
INSERT INTO `vehicles` VALUES ('10020', 'Itali GTB Custom', 'italigtb2', '285000', 'special');
INSERT INTO `vehicles` VALUES ('10021', 'Itali GTB', 'italigtb', '225000', 'special');
INSERT INTO `vehicles` VALUES ('10022', 'Tempesta', 'tempesta', '270000', 'special');

-- ----------------------------
-- Table structure for vehicles_pub
-- ----------------------------
DROP TABLE IF EXISTS `vehicles_pub`;
CREATE TABLE `vehicles_pub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10031 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of vehicles_pub
-- ----------------------------
INSERT INTO `vehicles_pub` VALUES ('24', 'Blista', 'blista', '12000', 'compacts');
INSERT INTO `vehicles_pub` VALUES ('25', 'Brioso R/A', 'brioso', '25000', 'compacts');
INSERT INTO `vehicles_pub` VALUES ('26', 'Issi', 'issi2', '13000', 'compacts');
INSERT INTO `vehicles_pub` VALUES ('27', 'Panto', 'panto', '14000', 'compacts');
INSERT INTO `vehicles_pub` VALUES ('28', 'Prairie', 'prairie', '15000', 'compacts');
INSERT INTO `vehicles_pub` VALUES ('45', 'Asea', 'asea', '8500', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('47', 'Emperor', 'emperor', '9500', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('48', 'Fugitive', 'fugitive', '18000', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('49', 'Glendale', 'glendale', '12500', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('50', 'Intruder', 'intruder', '17500', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('51', 'Premier', 'premier', '28000', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('52', 'Primo Custom', 'primo2', '52000', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('53', 'Regina', 'regina', '12000', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('54', 'Schafter', 'schafter2', '45000', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('56', 'Super Diamond', 'superd', '130000', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('57', 'Tailgater', 'tailgater', '35000', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('58', 'Warrener', 'warrener', '8000', 'sedans');
INSERT INTO `vehicles_pub` VALUES ('59', 'Washington', 'washington', '9000', 'sedans');

-- ----------------------------
-- Table structure for vehicle_categories
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_categories`;
CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of vehicle_categories
-- ----------------------------
INSERT INTO `vehicle_categories` VALUES ('1', 'coupes', 'Coupés');
INSERT INTO `vehicle_categories` VALUES ('2', 'sports', 'Sports');
INSERT INTO `vehicle_categories` VALUES ('3', 'sportsclassics', 'Sports Classics');
INSERT INTO `vehicle_categories` VALUES ('4', 'super', 'Super');
INSERT INTO `vehicle_categories` VALUES ('5', 'muscle', 'Muscle');
INSERT INTO `vehicle_categories` VALUES ('6', 'offroad', 'Off Road');
INSERT INTO `vehicle_categories` VALUES ('7', 'suvs', 'SUVs');
INSERT INTO `vehicle_categories` VALUES ('8', 'vans', 'Vans');
INSERT INTO `vehicle_categories` VALUES ('9', 'special', 'Spécial');

-- ----------------------------
-- Table structure for vehicle_categories_pub
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_categories_pub`;
CREATE TABLE `vehicle_categories_pub` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of vehicle_categories_pub
-- ----------------------------
INSERT INTO `vehicle_categories_pub` VALUES ('1', 'compacts', 'Compacts');
INSERT INTO `vehicle_categories_pub` VALUES ('2', 'sedans', 'Sedans');

-- ----------------------------
-- Table structure for weashops
-- ----------------------------
DROP TABLE IF EXISTS `weashops`;
CREATE TABLE `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of weashops
-- ----------------------------
INSERT INTO `weashops` VALUES ('6', 'BlackWeashop', 'WEAPON_PISTOL', '25000');
INSERT INTO `weashops` VALUES ('7', 'BlackWeashop', 'WEAPON_COMBATPISTOL', '25000');
INSERT INTO `weashops` VALUES ('8', 'BlackWeashop', 'WEAPON_STUNGUN', '10000');
INSERT INTO `weashops` VALUES ('9', 'BlackWeashop', 'WEAPON_SAWNOFFSHOTGUN', '15000');
INSERT INTO `weashops` VALUES ('10', 'BlackWeashop', 'WEAPON_MICROSMG', '18000');
INSERT INTO `weashops` VALUES ('11', 'BlackWeashop', 'WEAPON_HEAVYSHOTGUN', '20000');
INSERT INTO `weashops` VALUES ('12', 'BlackWeashop', 'WEAPON_COMPACTRIFLE', '12000');
INSERT INTO `weashops` VALUES ('13', 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', '25000');
INSERT INTO `weashops` VALUES ('14', 'BlackWeashop', 'WEAPON_SPECIALCARBINE', '55000');
INSERT INTO `weashops` VALUES ('15', 'BlackWeashop', 'WEAPON_SMG', '60000');
INSERT INTO `weashops` VALUES ('16', 'BlackWeashop', 'WEAPON_MG', '60000');
INSERT INTO `weashops` VALUES ('17', 'BlackWeashop', 'WEAPON_COMBATPDW', '65000');
INSERT INTO `weashops` VALUES ('18', 'BlackWeashop', 'WEAPON_MARKSMANRIFLE', '70000');
INSERT INTO `weashops` VALUES ('19', 'BlackWeashop', 'WEAPON_GUSENBERG', '100000');
INSERT INTO `weashops` VALUES ('20', 'BlackWeashop', 'WEAPON_COMPACTLAUNCHER', '150000');
INSERT INTO `weashops` VALUES ('21', 'BlackWeashop', 'WEAPON_HOMINGLAUNCHER', '200000');
INSERT INTO `weashops` VALUES ('216', 'GunShop', 'WEAPON_PISTOL', '6500');
INSERT INTO `weashops` VALUES ('24', 'GunShop', 'WEAPON_BAT', '1500');
INSERT INTO `weashops` VALUES ('25', 'GunShop', 'WEAPON_KNUCKLE', '1500');
INSERT INTO `weashops` VALUES ('26', 'GunShop', 'WEAPON_GOLFCLUB', '3700');
INSERT INTO `weashops` VALUES ('28', 'GunShop', 'WEAPON_VINTAGEPISTOL', '10000');
INSERT INTO `weashops` VALUES ('30', 'GunShop', 'WEAPON_PISTOL50', '25000');
INSERT INTO `weashops` VALUES ('31', 'GunShop', 'WEAPON_REVOLVER', '18000');
INSERT INTO `weashops` VALUES ('173', 'GunShop', 'WEAPON_FLASHLIGHT', '1000');
INSERT INTO `weashops` VALUES ('176', 'GunShop', 'WEAPON_HATCHET', '3500');
INSERT INTO `weashops` VALUES ('180', 'GunShop', 'WEAPON_CROWBAR', '1500');
INSERT INTO `weashops` VALUES ('181', 'GunShop', 'WEAPON_HAMMER', '1500');
INSERT INTO `weashops` VALUES ('182', 'GunShop', 'WEAPON_KNIFE', '1000');
INSERT INTO `weashops` VALUES ('196', 'GunShop', 'WEAPON_MACHETE', '1500');
INSERT INTO `weashops` VALUES ('202', 'GunShop', 'WEAPON_SNSPISTOL', '30000');
INSERT INTO `weashops` VALUES ('205', 'GunShop', 'WEAPON_HEAVYPISTOL', '35000');
INSERT INTO `weashops` VALUES ('207', 'GunShop', 'WEAPON_MUSKET', '50000');

-- ----------------------------
-- Table structure for whitelist
-- ----------------------------
DROP TABLE IF EXISTS `whitelist`;
CREATE TABLE `whitelist` (
  `firstname` text,
  `lastname` text,
  `identifier` varchar(255) NOT NULL,
  `last_connexion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ban_reason` text,
  `ban_until` timestamp NULL DEFAULT NULL,
  `vip` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of whitelist
-- ----------------------------
