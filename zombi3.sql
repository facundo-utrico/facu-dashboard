# Host: localhost  (Version 5.5.5-10.4.20-MariaDB)
# Date: 2021-12-08 16:13:04
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "addon_account"
#

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "addon_account"
#

INSERT INTO `addon_account` VALUES ('property_black_money','Argent Sale Propriété',0),('society_cardealer','Concessionnaire',1),('society_importdealer','Concessionnaire',1),('vault_black_money','Money Vault',0),('vipcoin','Vipcoin',0);

#
# Structure for table "addon_account_data"
#

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "addon_account_data"
#

INSERT INTO `addon_account_data` VALUES (45,'society_cardealer',0,NULL),(46,'society_importdealer',0,NULL),(47,'vipcoin',0,'steam:11000011728e15a'),(48,'vault_black_money',0,'steam:11000011728e15a'),(49,'property_black_money',0,'steam:11000011728e15a'),(50,'property_black_money',0,'steam:1100001001bf053'),(51,'vault_black_money',0,'steam:1100001001bf053'),(52,'vipcoin',0,'steam:1100001001bf053'),(53,'property_black_money',0,'steam:110000134fcfab3'),(54,'vault_black_money',0,'steam:110000134fcfab3'),(55,'vipcoin',0,'steam:110000134fcfab3');

#
# Structure for table "addon_inventory"
#

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "addon_inventory"
#

INSERT INTO `addon_inventory` VALUES ('property','Propriété',0),('society_cardealer','Concesionnaire',1),('society_importdealer','Importdealer',1),('vault','Vault',0);

#
# Structure for table "addon_inventory_items"
#

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "addon_inventory_items"
#

INSERT INTO `addon_inventory_items` VALUES (1,'vault','zr380',1,'steam:110000108968cbd'),(2,'vault','impaler4',1,'steam:110000108968cbd'),(3,'vault','cerberus3',1,'steam:110000108968cbd'),(4,'vault','monster5',0,'steam:110000108968cbd'),(5,'vault','impaler',2,'steam:110000114cc31bf'),(6,'vault','issi6',2,'steam:110000114cc31bf'),(7,'vault','deathbike',1,'steam:110000114cc31bf'),(8,'vault','monster3',2,'steam:110000142f7087b'),(9,'vault','vamos',1,'steam:110000142f7087b'),(10,'vault','monster4',2,'steam:110000114cc31bf'),(11,'vault','monster5',1,'steam:110000132752c99'),(12,'vault','impaler',1,'steam:110000139cc699d'),(13,'vault','imperator3',2,'steam:110000114cc31bf'),(14,'vault','impaler4',1,'steam:110000132752c99'),(15,'vault','cerberus2',1,'steam:110000132752c99'),(16,'vault','deathbike2',1,'steam:110000114cc31bf'),(17,'vault','dominator4',2,'steam:110000132752c99'),(18,'vault','deathbike',2,'steam:110000143ed3715'),(19,'vault','scarab2',1,'steam:110000143ed3715'),(20,'vault','boxrifle',25,'steam:110000139cc699d'),(21,'vault','boxshot',1,'steam:110000139cc699d'),(22,'vault','monster5',1,'steam:110000114cc31bf'),(23,'vault','boxrifle',8,'steam:110000114cc31bf'),(24,'vault','boxshot',5,'steam:110000114cc31bf'),(25,'vault','boxrifle',6,'steam:11000013c05c5e4'),(26,'vault','imperator2',2,'steam:11000013ce7de06'),(27,'vault','imperator3',1,'steam:11000013ce7de06'),(28,'vault','issi6',1,'steam:11000013ce7de06'),(29,'vault','slamvan6',1,'steam:11000013ce7de06'),(30,'vault','issi5',1,'steam:11000013ce7de06'),(31,'vault','deathbike',1,'steam:11000013ce7de06'),(32,'vault','deviant',1,'steam:11000013ce7de06'),(33,'vault','vamos',1,'steam:110000114cc31bf'),(34,'vault','scarab',1,'steam:110000132752c99'),(35,'vault','imperator3',1,'steam:11000010991f537'),(36,'vault','boxrifle',4,'steam:11000013ce7de06'),(37,'vault','boxrifle',3,'steam:11000010991f537'),(38,'vault','boxrifle',13,'steam:11000013b6a7c8f'),(39,'vault','boxsmg',4,'steam:11000013b6a7c8f'),(40,'vault','vamos',1,'steam:110000143ed3715'),(41,'vault','bruiser2',1,'steam:110000143ed3715'),(42,'vault','deviant',1,'steam:110000143ed3715'),(43,'vault','oxygenmask',10,'steam:110000143ed3715'),(44,'vault','repairkit',3,'steam:110000143ed3715'),(45,'vault','tulip',1,'steam:11000013c05c5e4'),(46,'vault','brutus',1,'steam:11000013c05c5e4'),(47,'vault','issi5',1,'steam:11000013c05c5e4'),(48,'vault','vamos',1,'steam:11000013c05c5e4'),(49,'vault','repairkit',20,'steam:110000139cc699d'),(50,'vault','deathbike2',1,'steam:110000140eff941'),(51,'vault','boxrifle',10,'steam:110000140eff941'),(52,'vault','boxsmg',17,'steam:1100001435500b5'),(53,'vault','boxrifle',15,'steam:1100001435500b5'),(54,'vault','boxsmg',17,'steam:110000132752c99'),(55,'vault','boxshot',40,'steam:110000132752c99'),(56,'vault','repairkit',20,'steam:11000013ebe8b71'),(57,'vault','boxshot',1,'steam:11000013ebe8b71'),(58,'vault','boxrifle',30,'steam:110000132752c99'),(59,'vault','boxpistol',10,'steam:110000132752c99'),(60,'vault','deathbike2',6,'steam:110000139cc699d'),(61,'vault','monster3',1,'steam:11000013ebe8b71'),(62,'vault','issi6',1,'steam:11000013ebe8b71'),(63,'vault','bruiser',1,'steam:11000013ebe8b71'),(64,'vault','bruiser2',1,'steam:11000013ebe8b71'),(65,'vault','bruiser3',1,'steam:11000013ebe8b71'),(66,'vault','deathbike2',1,'steam:11000013ebe8b71'),(67,'vault','issi4',1,'steam:11000013ebe8b71'),(68,'vault','vamos',1,'steam:11000013ebe8b71'),(69,'vault','binoculars',1,'steam:11000013ebe8b71'),(70,'vault','impaler2',1,'steam:11000013ebe8b71'),(71,'vault','brutus2',1,'steam:11000013ebe8b71'),(72,'vault','slamvan5',1,'steam:11000013ebe8b71'),(73,'vault','tulip',1,'steam:11000013ebe8b71'),(74,'vault','zr3802',1,'steam:110000106bd06a9'),(75,'vault','issi6',1,'steam:110000106bd06a9'),(76,'vault','dominator5',1,'steam:110000106bd06a9'),(77,'vault','bruiser2',1,'steam:110000106bd06a9'),(78,'vault','bandage',1,'steam:110000106bd06a9');

#
# Structure for table "av_tebex"
#

CREATE TABLE `av_tebex` (
  `transaction` longtext NOT NULL,
  `months` tinyint(2) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `redeemed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "av_tebex"
#


#
# Structure for table "av_vip"
#

CREATE TABLE `av_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "av_vip"
#


#
# Structure for table "bans"
#

CREATE TABLE `bans` (
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  PRIMARY KEY (`license`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "bans"
#


#
# Structure for table "cardealer_vehicles"
#

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "cardealer_vehicles"
#


#
# Structure for table "characters"
#

CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `dateofbirth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL DEFAULT '',
  `lastdigits` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "characters"
#


#
# Structure for table "crafting"
#

CREATE TABLE `crafting` (
  `identifier` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `bandages` int(11) NOT NULL DEFAULT 0,
  `cleanwater` int(11) NOT NULL DEFAULT 0,
  `cookedmeat` int(11) NOT NULL DEFAULT 0,
  `dirtywater` int(11) NOT NULL DEFAULT 0,
  `drinkitems` int(11) NOT NULL DEFAULT 0,
  `ducktape` int(11) NOT NULL DEFAULT 0,
  `emptybottles` int(11) NOT NULL DEFAULT 0,
  `enginekit` int(11) NOT NULL DEFAULT 0,
  `fooditems` int(11) NOT NULL DEFAULT 0,
  `gunpowder` int(11) NOT NULL DEFAULT 0,
  `rawmeat` int(11) NOT NULL DEFAULT 0,
  `scrapcloth` int(11) NOT NULL DEFAULT 0,
  `scrapmetal` int(11) NOT NULL DEFAULT 0,
  `woodlogs` int(11) NOT NULL DEFAULT 0,
  `woodmaterials` int(11) NOT NULL DEFAULT 0,
  `zblood` int(11) NOT NULL DEFAULT 0,
  `zcredits` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "crafting"
#

INSERT INTO `crafting` VALUES ('steam:11000011728e15a',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

#
# Structure for table "crew"
#

CREATE TABLE `crew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# Data for table "crew"
#


#
# Structure for table "datastore"
#

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "datastore"
#

INSERT INTO `datastore` VALUES ('property','Propriété',0),('user_ears','Ears',0),('user_glasses','Glasses',0),('user_helmet','Helmet',0),('user_mask','Mask',0),('vault','Vault',0);

#
# Structure for table "datastore_data"
#

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "datastore_data"
#

INSERT INTO `datastore_data` VALUES (1,'user_ears','steam:1100001158ffdf5','{}'),(2,'vault','steam:1100001158ffdf5','{}'),(3,'user_mask','steam:1100001158ffdf5','{}'),(4,'user_helmet','steam:1100001158ffdf5','{}'),(5,'user_glasses','steam:1100001158ffdf5','{}'),(6,'user_ears','steam:110000108968cbd','{}'),(7,'user_glasses','steam:110000108968cbd','{}'),(8,'user_helmet','steam:110000108968cbd','{}'),(9,'vault','steam:110000108968cbd','{}'),(10,'user_mask','steam:110000108968cbd','{\"skin\":{\"mask_2\":0,\"mask_1\":2},\"hasMask\":true}'),(11,'user_ears','steam:1100001001b785f','{}'),(12,'user_glasses','steam:1100001001b785f','{}'),(13,'user_helmet','steam:1100001001b785f','{}'),(14,'user_mask','steam:1100001001b785f','{}'),(15,'vault','steam:1100001001b785f','{}'),(16,'user_ears','steam:1100001189e4968','{}'),(17,'user_glasses','steam:1100001189e4968','{}'),(18,'user_mask','steam:1100001189e4968','{}'),(19,'user_helmet','steam:1100001189e4968','{}'),(20,'vault','steam:1100001189e4968','{}'),(21,'user_ears','steam:11000010762a07e','{}'),(22,'user_glasses','steam:11000010762a07e','{}'),(23,'user_helmet','steam:11000010762a07e','{}'),(24,'user_mask','steam:11000010762a07e','{}'),(25,'vault','steam:11000010762a07e','{}'),(26,'user_ears','steam:11000011728e15a','{\"skin\":{\"ears_2\":0,\"ears_1\":4},\"hasEars\":true}'),(27,'user_mask','steam:11000011728e15a','{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":23}}'),(28,'user_glasses','steam:11000011728e15a','{}'),(29,'vault','steam:11000011728e15a','{\"weapons\":[{\"name\":\"WEAPON_SWITCHBLADE\",\"ammo\":0}]}'),(30,'user_helmet','steam:11000011728e15a','{\"skin\":{\"helmet_1\":88,\"helmet_2\":0},\"hasHelmet\":true}'),(31,'user_ears','steam:110000116600df2','{}'),(32,'user_glasses','steam:110000116600df2','{}'),(33,'user_helmet','steam:110000116600df2','{}'),(34,'user_mask','steam:110000116600df2','{}'),(35,'vault','steam:110000116600df2','{}'),(36,'user_ears','steam:11000010991f537','{}'),(37,'user_glasses','steam:11000010991f537','{}'),(38,'user_helmet','steam:11000010991f537','{}'),(39,'user_mask','steam:11000010991f537','{}'),(40,'vault','steam:11000010991f537','{\"weapons\":[{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":126},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":168},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":84},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":15},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":53}]}'),(41,'user_ears','steam:11000011d4cfea8','{}'),(42,'user_glasses','steam:11000011d4cfea8','{}'),(43,'user_helmet','steam:11000011d4cfea8','{}'),(44,'user_mask','steam:11000011d4cfea8','{}'),(45,'vault','steam:11000011d4cfea8','{}'),(46,'user_ears','steam:110000139cc699d','{}'),(47,'user_glasses','steam:110000139cc699d','{}'),(48,'user_helmet','steam:110000139cc699d','{}'),(49,'vault','steam:110000139cc699d','{\"weapons\":[{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":84},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":126},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":168},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":210},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":13},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0}]}'),(50,'user_mask','steam:110000139cc699d','{\"skin\":{\"mask_2\":4,\"mask_1\":50},\"hasMask\":true}'),(51,'user_ears','steam:1100001066bf965','{}'),(52,'user_glasses','steam:1100001066bf965','{}'),(53,'user_helmet','steam:1100001066bf965','{}'),(54,'user_mask','steam:1100001066bf965','{}'),(55,'vault','steam:1100001066bf965','{}'),(56,'user_ears','steam:11000013c05c5e4','{}'),(57,'user_glasses','steam:11000013c05c5e4','{}'),(58,'user_helmet','steam:11000013c05c5e4','{}'),(59,'user_mask','steam:11000013c05c5e4','{}'),(60,'vault','steam:11000013c05c5e4','{\"weapons\":[{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_GRENADE\",\"ammo\":1},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":19},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":30},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0}]}'),(61,'user_ears','steam:110000142f7087b','{}'),(62,'user_glasses','steam:110000142f7087b','{}'),(63,'user_helmet','steam:110000142f7087b','{}'),(64,'user_mask','steam:110000142f7087b','{}'),(65,'vault','steam:110000142f7087b','{\"weapons\":[]}'),(66,'user_ears','steam:1100001435500b5','{}'),(67,'user_glasses','steam:1100001435500b5','{}'),(68,'user_helmet','steam:1100001435500b5','{\"hasHelmet\":true,\"skin\":{\"helmet_1\":20,\"helmet_2\":0}}'),(69,'user_mask','steam:1100001435500b5','{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":46}}'),(70,'vault','steam:1100001435500b5','{\"weapons\":[{\"ammo\":42,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"}]}'),(71,'user_ears','steam:11000014239d4b0','{}'),(72,'user_glasses','steam:11000014239d4b0','{}'),(73,'user_helmet','steam:11000014239d4b0','{}'),(74,'user_mask','steam:11000014239d4b0','{}'),(75,'vault','steam:11000014239d4b0','{}'),(76,'user_ears','steam:11000013ce7de06','{}'),(77,'user_glasses','steam:11000013ce7de06','{}'),(78,'user_helmet','steam:11000013ce7de06','{}'),(79,'user_mask','steam:11000013ce7de06','{}'),(80,'vault','steam:11000013ce7de06','{\"weapons\":[{\"ammo\":73,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"}]}'),(81,'user_ears','steam:1100001440bf6b2','{}'),(82,'user_glasses','steam:1100001440bf6b2','{}'),(83,'user_helmet','steam:1100001440bf6b2','{}'),(84,'user_mask','steam:1100001440bf6b2','{}'),(85,'vault','steam:1100001440bf6b2','{}'),(86,'user_ears','steam:11000010b1085f0','{}'),(87,'user_glasses','steam:11000010b1085f0','{}'),(88,'user_helmet','steam:11000010b1085f0','{}'),(89,'user_mask','steam:11000010b1085f0','{\"skin\":{\"mask_2\":1,\"mask_1\":97},\"hasMask\":true}'),(90,'vault','steam:11000010b1085f0','{}'),(91,'user_ears','steam:110000114cc31bf','{}'),(92,'user_glasses','steam:110000114cc31bf','{}'),(93,'user_helmet','steam:110000114cc31bf','{}'),(94,'user_mask','steam:110000114cc31bf','{}'),(95,'vault','steam:110000114cc31bf','{\"weapons\":[{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":84},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":35},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":6},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":0},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0}]}'),(96,'user_ears','steam:110000117d5b40b','{}'),(97,'user_glasses','steam:110000117d5b40b','{}'),(98,'user_helmet','steam:110000117d5b40b','{}'),(99,'user_mask','steam:110000117d5b40b','{}'),(100,'vault','steam:110000117d5b40b','{\"weapons\":[{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"ammo\":42,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"ammo\":1,\"name\":\"WEAPON_BALL\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_PISTOL\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PISTOL\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"}]}'),(101,'user_ears','steam:110000143ed3715','{}'),(102,'user_glasses','steam:110000143ed3715','{}'),(103,'user_helmet','steam:110000143ed3715','{}'),(104,'user_mask','steam:110000143ed3715','{}'),(105,'vault','steam:110000143ed3715','{\"weapons\":[{\"ammo\":23,\"name\":\"WEAPON_BZGAS\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":1,\"name\":\"WEAPON_BALL\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"ammo\":42,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\"},{\"ammo\":77,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"}]}'),(106,'user_ears','steam:110000142ff3a42','{}'),(107,'user_glasses','steam:110000142ff3a42','{}'),(108,'user_helmet','steam:110000142ff3a42','{}'),(109,'user_mask','steam:110000142ff3a42','{}'),(110,'vault','steam:110000142ff3a42','{}'),(111,'user_ears','steam:110000132752c99','{}'),(112,'user_glasses','steam:110000132752c99','{}'),(113,'user_helmet','steam:110000132752c99','{}'),(114,'user_mask','steam:110000132752c99','{}'),(115,'vault','steam:110000132752c99','{\"weapons\":[{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":84},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":126},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":168},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":210},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":250},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":38},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":84},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":126},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":168},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":210},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":250},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":250},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":250},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":41},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":41},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42}]}'),(116,'user_ears','steam:110000142a3fd47','{}'),(117,'user_glasses','steam:110000142a3fd47','{}'),(118,'user_helmet','steam:110000142a3fd47','{}'),(119,'user_mask','steam:110000142a3fd47','{}'),(120,'vault','steam:110000142a3fd47','{}'),(121,'user_ears','steam:11000013b6a7c8f','{}'),(122,'user_glasses','steam:11000013b6a7c8f','{}'),(123,'user_helmet','steam:11000013b6a7c8f','{}'),(124,'user_mask','steam:11000013b6a7c8f','{}'),(125,'vault','steam:11000013b6a7c8f','{\"weapons\":[{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":84,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":15,\"name\":\"WEAPON_FIREWORK\"}]}'),(126,'user_ears','steam:11000013cbc4136','{}'),(127,'user_glasses','steam:11000013cbc4136','{}'),(128,'user_helmet','steam:11000013cbc4136','{}'),(129,'user_mask','steam:11000013cbc4136','{}'),(130,'vault','steam:11000013cbc4136','{}'),(131,'user_ears','steam:11000013ebe8b71','{}'),(132,'user_glasses','steam:11000013ebe8b71','{}'),(133,'user_helmet','steam:11000013ebe8b71','{}'),(134,'user_mask','steam:11000013ebe8b71','{}'),(135,'vault','steam:11000013ebe8b71','{\"weapons\":[{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":42},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":84},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":126},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":19},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":19},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_GRENADE\",\"ammo\":25},{\"name\":\"WEAPON_BAT\",\"ammo\":0},{\"name\":\"WEAPON_SMOKEGRENADE\",\"ammo\":25},{\"name\":\"WEAPON_FIREEXTINGUISHER\",\"ammo\":42},{\"name\":\"WEAPON_BALL\",\"ammo\":1},{\"name\":\"WEAPON_BZGAS\",\"ammo\":25},{\"name\":\"WEAPON_STUNGUN\",\"ammo\":168},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_FLASHLIGHT\",\"ammo\":0},{\"name\":\"WEAPON_NIGHTSTICK\",\"ammo\":0},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MACHETE\",\"ammo\":0},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":84},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":0},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":42},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":42},{\"name\":\"WEAPON_FIREWORK\",\"ammo\":20},{\"name\":\"WEAPON_PISTOL\",\"ammo\":42},{\"name\":\"WEAPON_MICROSMG\",\"ammo\":36},{\"name\":\"WEAPON_PUMPSHOTGUN\",\"ammo\":35},{\"name\":\"WEAPON_ASSAULTRIFLE\",\"ammo\":84},{\"name\":\"WEAPON_SPECIALCARBINE\",\"ammo\":0},{\"name\":\"WEAPON_SNIPERRIFLE\",\"ammo\":42}]}'),(136,'user_ears','steam:110000140eff941','{}'),(137,'user_glasses','steam:110000140eff941','{}'),(138,'user_helmet','steam:110000140eff941','{}'),(139,'user_mask','steam:110000140eff941','{}'),(140,'vault','steam:110000140eff941','{\"weapons\":[{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":20,\"name\":\"WEAPON_FIREWORK\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"ammo\":42,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_PISTOL\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\"},{\"ammo\":42,\"name\":\"WEAPON_PISTOL\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":20,\"name\":\"WEAPON_FIREWORK\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\"},{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":84,\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":42,\"name\":\"WEAPON_FIREEXTINGUISHER\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PISTOL\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":84,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":25,\"name\":\"WEAPON_SMOKEGRENADE\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":20,\"name\":\"WEAPON_FIREWORK\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":126,\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":42,\"name\":\"WEAPON_PISTOL\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":54,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":25,\"name\":\"WEAPON_BZGAS\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":0,\"name\":\"WEAPON_FIREWORK\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\"},{\"ammo\":168,\"name\":\"WEAPON_STUNGUN\"},{\"ammo\":0,\"name\":\"WEAPON_FLASHLIGHT\"},{\"ammo\":13,\"name\":\"WEAPON_BZGAS\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":40,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":42,\"name\":\"WEAPON_PISTOL\"},{\"ammo\":41,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":34,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":42,\"name\":\"WEAPON_MICROSMG\"},{\"ammo\":71,\"name\":\"WEAPON_ASSAULTRIFLE\"},{\"ammo\":0,\"name\":\"WEAPON_SPECIALCARBINE\"},{\"ammo\":42,\"name\":\"WEAPON_PUMPSHOTGUN\"},{\"ammo\":25,\"name\":\"WEAPON_GRENADE\"},{\"ammo\":42,\"name\":\"WEAPON_SNIPERRIFLE\"},{\"ammo\":20,\"name\":\"WEAPON_FIREWORK\"},{\"ammo\":210,\"name\":\"WEAPON_STUNGUN\"}]}'),(141,'user_ears','steam:11000010a17ee38','{}'),(142,'user_glasses','steam:11000010a17ee38','{}'),(143,'user_helmet','steam:11000010a17ee38','{}'),(144,'user_mask','steam:11000010a17ee38','{}'),(145,'vault','steam:11000010a17ee38','{}'),(146,'user_glasses','steam:11000011b526c7e','{}'),(147,'user_ears','steam:11000011b526c7e','{}'),(148,'user_helmet','steam:11000011b526c7e','{}'),(149,'user_mask','steam:11000011b526c7e','{}'),(150,'vault','steam:11000011b526c7e','{}'),(151,'user_ears','steam:110000142ca08ef','{}'),(152,'user_mask','steam:110000142ca08ef','{}'),(153,'user_helmet','steam:110000142ca08ef','{}'),(154,'user_glasses','steam:110000142ca08ef','{}'),(155,'vault','steam:110000142ca08ef','{}'),(156,'user_ears','steam:11000014386965f','{}'),(157,'user_mask','steam:11000014386965f','{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":51}}'),(158,'user_glasses','steam:11000014386965f','{}'),(159,'user_helmet','steam:11000014386965f','{}'),(160,'vault','steam:11000014386965f','{}'),(161,'user_ears','steam:1100001110e410c','{}'),(162,'user_glasses','steam:1100001110e410c','{}'),(163,'user_helmet','steam:1100001110e410c','{}'),(164,'user_mask','steam:1100001110e410c','{}'),(165,'vault','steam:1100001110e410c','{}'),(166,'user_ears','steam:110000142af79f9','{}'),(167,'user_glasses','steam:110000142af79f9','{}'),(168,'user_helmet','steam:110000142af79f9','{}'),(169,'user_mask','steam:110000142af79f9','{}'),(170,'vault','steam:110000142af79f9','{}'),(171,'user_ears','steam:11000010bb48ba5','{}'),(172,'user_glasses','steam:11000010bb48ba5','{}'),(173,'user_helmet','steam:11000010bb48ba5','{}'),(174,'user_mask','steam:11000010bb48ba5','{}'),(175,'vault','steam:11000010bb48ba5','{}'),(176,'user_ears','steam:11000014477634e','{}'),(177,'user_glasses','steam:11000014477634e','{}'),(178,'user_helmet','steam:11000014477634e','{}'),(179,'user_mask','steam:11000014477634e','{}'),(180,'vault','steam:11000014477634e','{}'),(181,'user_ears','steam:110000106bd06a9','{}'),(182,'user_glasses','steam:110000106bd06a9','{}'),(183,'user_helmet','steam:110000106bd06a9','{}'),(184,'user_mask','steam:110000106bd06a9','{}'),(185,'vault','steam:110000106bd06a9','{\"weapons\":[{\"ammo\":37,\"name\":\"WEAPON_PISTOL\"}]}'),(186,'user_ears','steam:11000014346fbf0','{}'),(187,'user_glasses','steam:11000014346fbf0','{}'),(188,'user_helmet','steam:11000014346fbf0','{}'),(189,'user_mask','steam:11000014346fbf0','{}'),(190,'vault','steam:11000014346fbf0','{}'),(191,'user_ears','steam:11000014402ce82','{}'),(192,'user_glasses','steam:11000014402ce82','{}'),(193,'user_helmet','steam:11000014402ce82','{}'),(194,'user_mask','steam:11000014402ce82','{}'),(195,'vault','steam:11000014402ce82','{}'),(196,'user_ears','steam:1100001001bf053','{}'),(197,'user_glasses','steam:1100001001bf053','{}'),(198,'user_helmet','steam:1100001001bf053','{}'),(199,'user_mask','steam:1100001001bf053','{}'),(200,'vault','steam:1100001001bf053','{}'),(201,'user_ears','steam:11000013476e2e4','{}'),(202,'user_glasses','steam:11000013476e2e4','{}'),(203,'user_helmet','steam:11000013476e2e4','{}'),(204,'vault','steam:11000013476e2e4','{}'),(205,'user_mask','steam:11000013476e2e4','{}'),(206,'property','steam:11000011728e15a','{\"weapons\":[]}'),(207,'property','steam:1100001001bf053','{}'),(208,'property','steam:110000134fcfab3','{}'),(209,'user_helmet','steam:110000134fcfab3','{}'),(210,'user_ears','steam:110000134fcfab3','{}'),(211,'user_glasses','steam:110000134fcfab3','{}'),(212,'user_mask','steam:110000134fcfab3','{}'),(213,'vault','steam:110000134fcfab3','{}');

#
# Structure for table "garagekeys"
#

CREATE TABLE `garagekeys` (
  `identifier` varchar(64) NOT NULL DEFAULT '',
  `keys` longtext DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "garagekeys"
#


#
# Structure for table "importdealer_vehicles"
#

CREATE TABLE `importdealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "importdealer_vehicles"
#


#
# Structure for table "importedvehicle_categories"
#

CREATE TABLE `importedvehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "importedvehicle_categories"
#

INSERT INTO `importedvehicle_categories` VALUES ('import','import'),('importtwo','importtwo');

#
# Structure for table "importedvehicles"
#

CREATE TABLE `importedvehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "importedvehicles"
#

INSERT INTO `importedvehicles` VALUES ('Hustler','hustler',625000,'importtwo'),('sultan','sultan',15000,'import'),('sultanrs','sultanrs',18000,'import');

#
# Structure for table "importowned_vehicles"
#

CREATE TABLE `importowned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "importowned_vehicles"
#


#
# Structure for table "importrented_vehicles"
#

CREATE TABLE `importrented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "importrented_vehicles"
#


#
# Structure for table "importvehicle_sold"
#

CREATE TABLE `importvehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "importvehicle_sold"
#


#
# Structure for table "impound_garage"
#

CREATE TABLE `impound_garage` (
  `garage` varchar(64) NOT NULL DEFAULT '',
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`garage`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "impound_garage"
#

INSERT INTO `impound_garage` VALUES ('impound_davis','[]'),('impound_mrpd','[]'),('impound_vespucci','[]');

#
# Structure for table "inventories"
#

CREATE TABLE `inventories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Data for table "inventories"
#

INSERT INTO `inventories` VALUES (1,'KJT 356','glovebox','[]'),(2,'SMB 424','glovebox','[]'),(3,'SMB 424','trunk','[]');

#
# Structure for table "items"
#

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `limit` int(10) NOT NULL DEFAULT 0,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "items"
#

INSERT INTO `items` VALUES ('bandage','Venda',30,0,1),('bandage2','Venda 2',30,0,1),('binoculars','Binoculares',30,0,0),('box','Surprise Box',0,0,1),('boxflare','Municion Flaregun',30,0,1),('boxmg','Munición MG',30,0,1),('boxpistol','Municion Pistola',30,0,1),('boxrifle','Municion Rifle',30,0,1),('boxshot','Municion Escopeta',30,0,1),('boxsmg','Municion SMG',30,0,1),('boxsniper','Municion Sniper',30,0,1),('bruiser','bruiser',30,0,1),('bruiser2','bruiser2',30,0,1),('bruiser3','bruiser3',30,0,1),('brutus','brutus',30,0,1),('brutus2','brutus2',30,0,1),('brutus3','brutus3',30,0,1),('bulletproof','Chaleco anti balas',30,0,1),('cannabis','boxsmg',30,0,1),('cerberus','cerberus',30,0,1),('cerberus2','cerberus2',30,0,1),('cerberus3','cerberus3',30,0,1),('cleankit','Cleaning Kit',1,0,1),('darknet','Dark Net',1,0,1),('deathbike','deathbike',30,0,1),('deathbike2','deathbike2',30,0,1),('deathbike3','deathbike3',30,0,1),('defib','Defib',1,0,1),('deviant','deviant',30,0,1),('dominator4','dominator4',30,0,1),('dominator5','dominator5',30,0,1),('dominator6','dominator6',30,0,1),('drill','Drill',1,0,1),('firework','Firework',1,0,1),('firstaidkit','First Aid Kit',1,0,1),('handcuffkey','Handcuff Keys',1,0,1),('handcuffs','Handcuffs',1,0,1),('impaler','impaler',30,0,1),('impaler2','impaler2',30,0,1),('impaler3','impaler3',30,0,1),('impaler4','impaler4',30,0,1),('imperator','imperator',30,0,1),('imperator2','imperator2',30,0,1),('imperator3','imperator3',30,0,1),('issi4','issi4',30,0,1),('issi5','issi5',30,0,1),('issi6','issi6',30,0,1),('lockpick','Lock Pick',1,0,1),('marijuana','Marihuana',30,0,1),('medikit','Medikit',30,0,1),('monster3','monster3',30,0,1),('monster4','monster4',30,0,1),('monster5','monster5',30,0,1),('oxygenmask','Mascara de oxigeno',30,0,1),('repairkit','Kit de reparación',30,0,1),('scarab','scarab',30,0,1),('scarab2','scarab2',30,0,1),('scarab3','scarab3',30,0,1),('slamvan4','slamvan4',30,0,1),('slamvan5','slamvan5',30,0,1),('slamvan6','slamvan6',30,0,1),('tirekit','Tire Kit',1,0,1),('tulip','tulip',30,0,1),('vamos','vamos',30,0,1),('vape','Vape',1,0,1),('vehgps','Vehicle GPS',1,0,1),('weakit','Weapon Kit',1,0,1),('zr380','zr380',30,0,1),('zr3802','zr3802',30,0,1),('zr3803','zr3803',30,0,1);

#
# Structure for table "job_grades"
#

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "job_grades"
#

INSERT INTO `job_grades` VALUES (1,'unemployed',0,'unemployed','Unemployed',0,'{}','{}'),(2,'russia',0,'unselected','Select Your Division',0,'{}','{}'),(3,'russia',1,'comrifle','Rifle Commando',0,'{}','{}'),(4,'russia',2,'comartil','Artillery Commando',0,'{}','{}'),(5,'russia',3,'comshotgun','Shotgun Commando',0,'{}','{}'),(6,'russia',4,'comsnip','Sniper Commando',0,'{}','{}'),(7,'russia',5,'gpilot','Ground Pilot',0,'{}','{}'),(8,'russia',6,'apilot','Aircraft Pilot',0,'{}','{}'),(9,'usa',0,'unselected','Select Your Division',0,'{}','{}'),(10,'usa',1,'comrifle','Rifle Commando',0,'{}','{}'),(11,'usa',2,'comartil','Artillery Commando',0,'{}','{}'),(12,'usa',3,'comshotgun','Shotgun Commando',0,'{}','{}'),(13,'usa',4,'comsnip','Sniper Commando',0,'{}','{}'),(14,'usa',5,'gpilot','Ground Pilot',0,'{}','{}'),(15,'usa',6,'apilot','Aircraft Pilot',0,'{}','{}'),(16,'russia',7,'gcommander','Ground Squad Commander',0,'{}','{}'),(17,'russia',8,'acommander','Aircraft Squad Commander',0,'{}','{}'),(18,'usa',7,'gcommander','Ground Squad Commander',0,'{}','{}'),(19,'usa',8,'acommander','Aircraft Squad Commander',0,'{}','{}'),(37,'importdealer',0,'recruit','Recrue',10,'{}','{}'),(38,'importdealer',1,'novice','Novice',25,'{}','{}'),(39,'importdealer',2,'experienced',' Co-owner',40,'{}','{}'),(40,'importdealer',3,'boss','Owner',0,'{}','{}'),(41,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(42,'cardealer',1,'novice','Novice',25,'{}','{}'),(43,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(44,'cardealer',3,'boss','Patron',0,'{}','{}'),(45,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(46,'cardealer',1,'novice','Novice',25,'{}','{}'),(47,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(48,'cardealer',3,'boss','Patron',0,'{}','{}'),(49,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(50,'cardealer',1,'novice','Novice',25,'{}','{}'),(51,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(52,'cardealer',3,'boss','Patron',0,'{}','{}'),(53,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(54,'cardealer',1,'novice','Novice',25,'{}','{}'),(55,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(56,'cardealer',3,'boss','Patron',0,'{}','{}'),(57,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(58,'cardealer',1,'novice','Novice',25,'{}','{}'),(59,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(60,'cardealer',3,'boss','Patron',0,'{}','{}'),(61,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(62,'cardealer',1,'novice','Novice',25,'{}','{}'),(63,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(64,'cardealer',3,'boss','Patron',0,'{}','{}'),(65,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(66,'cardealer',1,'novice','Novice',25,'{}','{}'),(67,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(68,'cardealer',3,'boss','Patron',0,'{}','{}'),(81,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(82,'cardealer',1,'novice','Novice',25,'{}','{}'),(83,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(84,'cardealer',3,'boss','Patron',0,'{}','{}'),(85,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(86,'cardealer',1,'novice','Novice',25,'{}','{}'),(87,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(88,'cardealer',3,'boss','Patron',0,'{}','{}'),(89,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(90,'cardealer',1,'novice','Novice',25,'{}','{}'),(91,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(92,'cardealer',3,'boss','Patron',0,'{}','{}'),(93,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(94,'cardealer',1,'novice','Novice',25,'{}','{}'),(95,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(96,'cardealer',3,'boss','Patron',0,'{}','{}'),(97,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(98,'cardealer',1,'novice','Novice',25,'{}','{}'),(99,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(100,'cardealer',3,'boss','Patron',0,'{}','{}'),(101,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(102,'cardealer',1,'novice','Novice',25,'{}','{}'),(103,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(104,'cardealer',3,'boss','Patron',0,'{}','{}'),(105,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(106,'cardealer',1,'novice','Novice',25,'{}','{}'),(107,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(108,'cardealer',3,'boss','Patron',0,'{}','{}'),(109,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(110,'cardealer',1,'novice','Novice',25,'{}','{}'),(111,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(112,'cardealer',3,'boss','Patron',0,'{}','{}'),(113,'cardealer',0,'recruit','Recrue',10,'{}','{}'),(114,'cardealer',1,'novice','Novice',25,'{}','{}'),(115,'cardealer',2,'experienced','Experimente',40,'{}','{}'),(116,'cardealer',3,'boss','Patron',0,'{}','{}');

#
# Structure for table "jobs"
#

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "jobs"
#

INSERT INTO `jobs` VALUES ('cardealer','Concessionnaire'),('hells','Hells Angels MC'),('importdealer','Importdealer'),('kravsbitches','Kravs Bitchess'),('russia','Russia'),('unemployed','Unemployed'),('usa','United State America');

#
# Structure for table "market"
#

CREATE TABLE `market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT 1,
  `weight` varchar(10) DEFAULT '0',
  `price` varchar(10) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `identifier` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "market"
#


#
# Structure for table "okokmarketplace_blackmarket"
#

CREATE TABLE `okokmarketplace_blackmarket` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `author_identifier` varchar(255) NOT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "okokmarketplace_blackmarket"
#


#
# Structure for table "okokmarketplace_items"
#

CREATE TABLE `okokmarketplace_items` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `author_identifier` varchar(255) NOT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# Data for table "okokmarketplace_items"
#

INSERT INTO `okokmarketplace_items` VALUES (1,'medikit','Medikit','3','steam:11000011728e15a','Facu',NULL,'Medikit To get healt','100',0,'09/11 - 19:44');

#
# Structure for table "okokmarketplace_vehicles"
#

CREATE TABLE `okokmarketplace_vehicles` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `author_identifier` varchar(255) NOT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `sold` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "okokmarketplace_vehicles"
#


#
# Structure for table "owned_properties"
#

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# Data for table "owned_properties"
#

INSERT INTO `owned_properties` VALUES (1,'LowEndApartment',2813,1,'steam:11000011728e15a');

#
# Structure for table "owned_vehicles"
#

CREATE TABLE `owned_vehicles` (
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the vehicle',
  `stored` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the vehicle',
  `garage_name` varchar(50) NOT NULL DEFAULT 'Garage_Centre',
  `pound` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'car',
  `job` varchar(50) DEFAULT NULL,
  `garage_id` varchar(32) NOT NULL DEFAULT 'A',
  `impound` int(1) NOT NULL DEFAULT 0,
  `park_coord` longtext DEFAULT NULL,
  `isparked` int(1) DEFAULT 0,
  PRIMARY KEY (`plate`),
  KEY `vehsowned` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "owned_vehicles"
#

INSERT INTO `owned_vehicles` VALUES ('{\"modDashboard\":-1,\"color2\":12,\"modSpeakers\":-1,\"modTurbo\":false,\"modArmor\":-1,\"modSteeringWheel\":-1,\"modHorns\":-1,\"modArchCover\":-1,\"modStruts\":-1,\"modAerials\":-1,\"modSideSkirt\":-1,\"modHydrolic\":-1,\"modTrunk\":-1,\"modTrimA\":-1,\"modLivery\":-1,\"modBackWheels\":-1,\"plate\":\"KJT 356\",\"modFrame\":-1,\"engineHealth\":1000.0,\"modSuspension\":-1,\"modGrille\":-1,\"modExhaust\":-1,\"windowTint\":-1,\"modPlateHolder\":-1,\"modAPlate\":-1,\"bodyHealth\":1000.0,\"extras\":{\"10\":true,\"1\":true,\"12\":false},\"modFrontBumper\":-1,\"modFrontWheels\":-1,\"wheels\":7,\"wheelColor\":156,\"modXenon\":false,\"modHood\":-1,\"modDial\":-1,\"model\":-1216765807,\"pearlescentColor\":111,\"modWindows\":-1,\"color1\":4,\"modEngine\":-1,\"modVanityPlate\":-1,\"modFender\":-1,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":-1,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modShifterLeavers\":-1,\"modTransmission\":-1,\"modDoorSpeaker\":-1,\"fuelLevel\":65.0,\"dirtLevel\":7.0,\"modSmokeEnabled\":false,\"modSeats\":-1,\"plateIndex\":0,\"neonColor\":[255,0,255],\"modTrimB\":-1,\"modOrnaments\":-1,\"modEngineBlock\":-1,\"modAirFilter\":-1,\"modTank\":-1,\"modRoof\":-1,\"modSpoilers\":-1,\"modRightFender\":-1}','steam:11000011728e15a',0,1,'Garage_Centre',0,NULL,'KJT 356','car',NULL,'A',0,NULL,0),('{\"wheelColor\":156,\"dirtLevel\":4.0,\"modSteeringWheel\":-1,\"color1\":111,\"modAPlate\":-1,\"modExhaust\":-1,\"windowTint\":-1,\"modTurbo\":false,\"pearlescentColor\":70,\"modHood\":-1,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"engineHealth\":1000.0,\"modTrunk\":-1,\"modTank\":-1,\"modAerials\":-1,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"modOrnaments\":-1,\"modGrille\":-1,\"modXenon\":false,\"modHorns\":-1,\"plateIndex\":0,\"modBrakes\":-1,\"modLivery\":-1,\"modAirFilter\":-1,\"modFrontWheels\":-1,\"modVanityPlate\":-1,\"modDial\":-1,\"model\":-1216765807,\"modSeats\":-1,\"modStruts\":-1,\"modPlateHolder\":-1,\"fuelLevel\":70.2,\"modRightFender\":-1,\"modDashboard\":-1,\"wheels\":7,\"extras\":{\"12\":true,\"1\":true,\"10\":false},\"bodyHealth\":1000.0,\"modFrontBumper\":-1,\"tyreSmokeColor\":[255,255,255],\"modEngineBlock\":-1,\"plate\":\"SMB 424\",\"modSuspension\":-1,\"modShifterLeavers\":-1,\"modBackWheels\":-1,\"modEngine\":-1,\"modSideSkirt\":-1,\"modSpeakers\":-1,\"color2\":2,\"modSpoilers\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"modFrame\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modTransmission\":-1,\"modFender\":-1}','steam:11000011728e15a',0,0,'Garage_Centre',0,NULL,'SMB 424','car',NULL,'A',0,NULL,0);

#
# Structure for table "parking_meter"
#

CREATE TABLE `parking_meter` (
  `identifier` varchar(64) NOT NULL DEFAULT '',
  `plate` varchar(32) DEFAULT '',
  `vehicle` longtext DEFAULT NULL,
  `coord` longtext DEFAULT NULL,
  `park_coord` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "parking_meter"
#


#
# Structure for table "phone_app_chat"
#

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

#
# Data for table "phone_app_chat"
#


#
# Structure for table "phone_calls"
#

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Name',
  `num` varchar(10) NOT NULL COMMENT 'Phone Number',
  `incoming` int(11) NOT NULL COMMENT 'Define Incoming Call',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Accept Call',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

#
# Data for table "phone_calls"
#


#
# Structure for table "phone_messages"
#

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

#
# Data for table "phone_messages"
#


#
# Structure for table "phone_users_contacts"
#

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "phone_users_contacts"
#


#
# Structure for table "players"
#

CREATE TABLE `players` (
  `ids` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steamid` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `license` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `discord` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `x` text CHARACTER SET latin1 DEFAULT NULL,
  `y` text CHARACTER SET latin1 DEFAULT NULL,
  `z` text CHARACTER SET latin1 DEFAULT NULL,
  `hunger` float NOT NULL DEFAULT 100,
  `thirst` float NOT NULL DEFAULT 100,
  `inv` text CHARACTER SET latin1 DEFAULT NULL,
  `health` bigint(20) NOT NULL DEFAULT 200,
  `playerkillsthislife` bigint(20) DEFAULT 0,
  `zombiekillsthislife` bigint(20) NOT NULL DEFAULT 0,
  `playerkills` bigint(20) NOT NULL DEFAULT 0,
  `zombiekills` bigint(20) NOT NULL DEFAULT 0,
  `humanity` bigint(20) NOT NULL DEFAULT 500,
  `infected` varchar(8) CHARACTER SET latin1 NOT NULL DEFAULT 'false',
  `money` bigint(20) NOT NULL DEFAULT 0,
  `locker_money` int(11) NOT NULL DEFAULT 0,
  `wheelspins` int(11) DEFAULT 0,
  `playtime` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '0:0',
  `currentQuest` text CHARACTER SET latin1 DEFAULT NULL,
  `finishedQuests` text CHARACTER SET latin1 DEFAULT NULL,
  `customskin` char(65) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`ids`),
  UNIQUE KEY `ids` (`ids`),
  KEY `steamid` (`steamid`),
  KEY `discord` (`discord`)
) ENGINE=InnoDB AUTO_INCREMENT=744906 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "players"
#

INSERT INTO `players` VALUES (744895,'casi','steam:110000139cc699d','license:3f8b6df968d79aa027a4eaf7ac9f9783789ecfc8','604305034938810379','1408.4193115234375','3606.3720703125','39.00080108642578',83.3805,76.8789,'[{\"id\":1,\"count\":1},{\"id\":2,\"count\":1},{\"id\":17,\"count\":200},{\"id\":33,\"count\":12},{\"id\":92,\"count\":1}]',171,0,11,0,13,509,'false',200,3761,0,'0:18','[]','{}',''),(744896,'Cortador de pitos','steam:11000011728e15a','license:bad20d86dfc9eaa7b13fd9e717e4bbef245965a9','308338225464999936','76.45105743408203','-769.124267578125','31.4992733001709',80.8891,72.4355,'[{\"count\":12,\"id\":1},{\"count\":12,\"id\":2},{\"count\":2.0,\"id\":8},{\"count\":4.0,\"id\":12},{\"count\":9,\"id\":17},{\"count\":1,\"id\":27},{\"count\":243,\"id\":33},{\"count\":243,\"id\":38},{\"count\":249,\"id\":45},{\"count\":229,\"id\":51},{\"count\":243,\"id\":60},{\"count\":243,\"id\":62},{\"count\":210,\"id\":80},{\"count\":12,\"id\":92}]',200,0,9,2,40,338,'false',9,0,0,'0:45','{\"progress\":{\"herokills\":0,\"stopCamps\":0,\"banditkills\":0,\"zombiekills\":0},\"active\":true,\"id\":99}','{}',''),(744897,'FuriOso','steam:1100001066bf965','license:09b34f225d25cd16b251b88d407a3dee2f548417','215210265308823555','167.09561157226562','-588.2911376953125','30.246423721313477',99.7134,99.5849,'[{\"count\":1,\"id\":27},{\"count\":1,\"id\":29},{\"count\":250,\"id\":32},{\"count\":250,\"id\":33},{\"count\":250,\"id\":42},{\"count\":250,\"id\":45},{\"count\":250,\"id\":47},{\"count\":250,\"id\":51},{\"count\":250,\"id\":60},{\"count\":250,\"id\":62},{\"count\":1,\"id\":63},{\"count\":250,\"id\":68},{\"count\":250,\"id\":69},{\"count\":1,\"id\":73},{\"count\":220,\"id\":80}]',0,2,0,35,54,-6,'false',0,0,0,'0:42','{\"active\":true,\"id\":97,\"progress\":{\"zombiekills\":54,\"stopCamps\":0,\"herokills\":0,\"banditkills\":13}}','{}',''),(744898,'Vene','steam:11000014402ce82','license:bea8b3426288c43570165a89070cc273401eac1f','646381087253332018','188.57257080078125','-594.070068359375','29.675859451293945',99.5304,99.3916,'[{\"id\":27,\"count\":1},{\"id\":29,\"count\":1},{\"id\":32,\"count\":245},{\"id\":33,\"count\":245},{\"id\":42,\"count\":250},{\"id\":45,\"count\":250},{\"id\":47,\"count\":250},{\"id\":51,\"count\":250},{\"id\":60,\"count\":245},{\"id\":62,\"count\":245},{\"id\":63,\"count\":1},{\"id\":68,\"count\":250},{\"id\":69,\"count\":250},{\"id\":73,\"count\":1},{\"id\":80,\"count\":236}]',0,1,0,24,8,434,'false',0,0,0,'0:43','[]','{}',''),(744899,'Facu','steam:110000132752c99','license:39384509da9b93d8c9ed3f04d5f713d040a686fd','480574286428373014','198.2115478515625','-593.2015991210938','29.310287475585938',99.9628,99.9447,'[{\"count\":94,\"id\":1},{\"count\":92,\"id\":2},{\"count\":1.0,\"id\":3},{\"count\":3.0,\"id\":4},{\"count\":3.0,\"id\":8},{\"count\":2.0,\"id\":9},{\"count\":1.0,\"id\":10},{\"count\":7.0,\"id\":12},{\"count\":2.0,\"id\":16},{\"count\":111,\"id\":17},{\"count\":1.0,\"id\":18},{\"count\":6.0,\"id\":19},{\"count\":1.0,\"id\":20},{\"count\":1,\"id\":27},{\"count\":1,\"id\":29},{\"count\":250,\"id\":32},{\"count\":250,\"id\":33},{\"count\":250,\"id\":42},{\"count\":250,\"id\":45},{\"count\":250,\"id\":47},{\"count\":250,\"id\":51},{\"count\":250,\"id\":60},{\"count\":250,\"id\":62},{\"count\":1,\"id\":63},{\"count\":250,\"id\":68},{\"count\":250,\"id\":69},{\"count\":1,\"id\":73},{\"count\":250,\"id\":80},{\"count\":2.0,\"id\":88},{\"count\":87,\"id\":92}]',200,0,0,8,13,315,'false',111,0,0,'0:28','{\"progress\":{\"stopCamps\":0,\"banditkills\":2,\"zombiekills\":8,\"herokills\":0},\"active\":true,\"id\":4}','{}',''),(744900,'VannERush hellcase.com','steam:11000010991f537','license:9356e1221436a49fec1b4f28b0355712ee0e5dd2','381601827029778434','-263.27825927734375','-1381.9691162109375','31.305715560913086',97.0877,95.895,'[{\"id\":1,\"count\":1},{\"id\":2,\"count\":1},{\"id\":17,\"count\":1},{\"id\":92,\"count\":1}]',200,0,1,0,32,529,'false',1,658,0,'0:46','[]','{}',''),(744901,'ValenOrdinas02','steam:110000142f7087b','license:600c65ba425d624e1d9430e4ff35baf01090ccb5','550482167571021854','1696.3968505859375','3355.850830078125','40.4920539855957',92.0043,88.51,'[{\"id\":1,\"count\":1},{\"id\":2,\"count\":1},{\"id\":6,\"count\":1.0},{\"id\":17,\"count\":1},{\"id\":92,\"count\":1}]',200,0,1,3,3,370,'false',1,0,0,'0:29','{\"id\":97,\"active\":true,\"progress\":{\"banditkills\":0,\"stopCamps\":0,\"zombiekills\":3,\"herokills\":0}}','{}',''),(744902,'fisca','steam:11000013c05c5e4','license:62d42530fc0752f7f651c5ff03d7493f77c8b12a','558789865601499139','174.86708068847656','-599.0338134765625','29.962011337280273',99.8725,99.8362,'[{\"id\":27,\"count\":1},{\"id\":29,\"count\":1},{\"id\":32,\"count\":250},{\"id\":33,\"count\":250},{\"id\":42,\"count\":250},{\"id\":45,\"count\":250},{\"id\":47,\"count\":250},{\"id\":51,\"count\":250},{\"id\":60,\"count\":250},{\"id\":62,\"count\":250},{\"id\":63,\"count\":1},{\"id\":68,\"count\":250},{\"id\":69,\"count\":250},{\"id\":73,\"count\":1},{\"id\":80,\"count\":213}]',0,1,0,13,42,471,'false',0,14,0,'0:40','{\"progress\":{\"zombiekills\":28,\"banditkills\":6,\"herokills\":0,\"stopCamps\":0},\"id\":1,\"active\":true}','{}',''),(744903,'hola pa','steam:11000013b6a7c8f','license:0718c1f7d26b84d85b8767be20b8e7e2b64507a7','','177.4349365234375','460.0591125488281','348.2676086425781',98.5069,97.7795,'[{\"count\":1,\"id\":1},{\"count\":1,\"id\":2},{\"count\":1,\"id\":92}]',200,0,0,0,9,535,'false',0,0,0,'0:45','[]','[]',''),(744904,'PAMPERS TE DA UN BESITO','steam:110000142f50816','license:1c18bf7199ba624db954f0857e51295c32184aee','','172.68373107910156','-590.98828125','30.05253791809082',99.9328,99.9,'[{\"id\":27,\"count\":1},{\"id\":29,\"count\":1},{\"id\":32,\"count\":250},{\"id\":33,\"count\":250},{\"id\":42,\"count\":249},{\"id\":45,\"count\":250},{\"id\":47,\"count\":250},{\"id\":51,\"count\":250},{\"id\":60,\"count\":250},{\"id\":62,\"count\":250},{\"id\":63,\"count\":1},{\"id\":68,\"count\":249},{\"id\":69,\"count\":250},{\"id\":73,\"count\":1},{\"id\":80,\"count\":250}]',0,0,0,29,15,-641,'false',0,0,1,'0:14','[]','[]',''),(744905,'Negrito Sexual','steam:1100001435500b5','license:bd0d0521613afd57e3d4cd5728e15e7f04c59e3a','','0.0','0.0','77.0',100,100,'[]',200,0,0,0,0,500,'false',0,0,0,'0:0','{}','{}','');

#
# Structure for table "playtime"
#

CREATE TABLE `playtime` (
  `playtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `playtime_seconds` int(11) NOT NULL,
  `playtime_minutes` int(11) NOT NULL,
  `playtime_hours` int(11) NOT NULL,
  `playtime_days` int(11) NOT NULL,
  `playtime_score` int(11) NOT NULL,
  `playtime_name` varchar(150) NOT NULL,
  `playtime_id_lic` varchar(150) NOT NULL,
  `playtime_id_ip` varchar(150) NOT NULL,
  `playtime_id_steam` varchar(150) DEFAULT NULL,
  `playtime_id_discord` varchar(150) DEFAULT NULL,
  `playtime_date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`playtime_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

#
# Data for table "playtime"
#

INSERT INTO `playtime` VALUES (1,33,5,6,1,108333,'Facu','bad20d86dfc9eaa7b13fd9e717e4bbef245965a9','192.168.1.4','11000011728e15a','308338225464999936','2021-10-18 16:06:02'),(2,15,14,0,0,855,'DeLeCom','8169f1a1367d0cff61c2d62b84a3d4353db56b10','94.134.182.83','11000013476e2e4',NULL,'2021-10-26 20:00:14'),(3,33,51,7,1,114693,'Facu','6d56b73353ba8f4b2996fb6b70b34086d630c773','192.168.1.2','11000011728e15a','308338225464999936','2021-11-15 15:17:19'),(4,30,33,0,0,2010,'Isaacv89','6df76c6f9bea745e968bafb5b447159598ed4ba6','72.228.83.84','110000134fcfab3','833477571160965171','2021-12-04 12:21:24');

#
# Structure for table "private_garage"
#

CREATE TABLE `private_garage` (
  `identifier` varchar(64) NOT NULL DEFAULT '',
  `vehicles` longtext DEFAULT NULL,
  `garage` varchar(64) DEFAULT NULL,
  `inventory` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "private_garage"
#


#
# Structure for table "properties"
#

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

#
# Data for table "properties"
#

INSERT INTO `properties` VALUES (1,'WhispymoundDrive','2677 Whispymound Drive','{\"y\":564.89,\"z\":182.959,\"x\":119.384}','{\"x\":117.347,\"y\":559.506,\"z\":183.304}','{\"y\":557.032,\"z\":183.301,\"x\":118.037}','{\"y\":567.798,\"z\":182.131,\"x\":119.249}','[]',NULL,1,1,0,'{\"x\":118.748,\"y\":566.573,\"z\":175.697}',1500000),(2,'NorthConkerAvenue2045','2045 North Conker Avenue','{\"x\":372.796,\"y\":428.327,\"z\":144.685}','{\"x\":373.548,\"y\":422.982,\"z\":144.907},','{\"y\":420.075,\"z\":145.904,\"x\":372.161}','{\"x\":372.454,\"y\":432.886,\"z\":143.443}','[]',NULL,1,1,0,'{\"x\":377.349,\"y\":429.422,\"z\":137.3}',1500000),(3,'RichardMajesticApt2','Richard Majestic, Apt 2','{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}','{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}','{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}','{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}','[]',NULL,1,1,0,'{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}',1700000),(4,'NorthConkerAvenue2044','2044 North Conker Avenue','{\"y\":440.8,\"z\":146.702,\"x\":346.964}','{\"y\":437.456,\"z\":148.394,\"x\":341.683}','{\"y\":435.626,\"z\":148.394,\"x\":339.595}','{\"x\":350.535,\"y\":443.329,\"z\":145.764}','[]',NULL,1,1,0,'{\"x\":337.726,\"y\":436.985,\"z\":140.77}',1500000),(5,'WildOatsDrive','3655 Wild Oats Drive','{\"y\":502.696,\"z\":136.421,\"x\":-176.003}','{\"y\":497.817,\"z\":136.653,\"x\":-174.349}','{\"y\":495.069,\"z\":136.666,\"x\":-173.331}','{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}','[]',NULL,1,1,0,'{\"x\":-174.725,\"y\":493.095,\"z\":129.043}',1500000),(6,'HillcrestAvenue2862','2862 Hillcrest Avenue','{\"y\":596.58,\"z\":142.641,\"x\":-686.554}','{\"y\":591.988,\"z\":144.392,\"x\":-681.728}','{\"y\":590.608,\"z\":144.392,\"x\":-680.124}','{\"y\":599.019,\"z\":142.059,\"x\":-689.492}','[]',NULL,1,1,0,'{\"x\":-680.46,\"y\":588.6,\"z\":136.769}',1500000),(7,'LowEndApartment','Appartement de base','{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}','{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}','{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}','{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}','[]',NULL,1,1,0,'{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}',562500);

#
# Structure for table "ranking_crew"
#

CREATE TABLE `ranking_crew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `members` int(11) DEFAULT 1,
  `kills` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

#
# Data for table "ranking_crew"
#


#
# Structure for table "rented_vehicles"
#

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(30) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "rented_vehicles"
#


#
# Structure for table "renzu_jobs"
#

CREATE TABLE `renzu_jobs` (
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `accounts` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `inventory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `garage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "renzu_jobs"
#

INSERT INTO `renzu_jobs` VALUES ('unemployed','{\"money\":0,\"black_money\":0}','[]','[]');

#
# Structure for table "safes"
#

CREATE TABLE `safes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inv` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creationTime` text CHARACTER SET latin1 DEFAULT NULL,
  `owner` text CHARACTER SET latin1 DEFAULT NULL,
  `passcode` varchar(4) CHARACTER SET latin1 DEFAULT '0000',
  `x` text CHARACTER SET latin1 DEFAULT NULL,
  `y` text CHARACTER SET latin1 DEFAULT NULL,
  `z` text CHARACTER SET latin1 DEFAULT NULL,
  `r` text CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

#
# Data for table "safes"
#


#
# Structure for table "saveclothes"
#

CREATE TABLE `saveclothes` (
  `identifier` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `wardrobe` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "saveclothes"
#

INSERT INTO `saveclothes` VALUES ('steam:11000011728e15a','{\"1\":{\"lipstick_3\":0,\"blush_3\":0,\"moles_1\":0,\"complexion_1\":0,\"skin\":0,\"glasses_1\":17,\"torso_1\":81,\"eyebrows_1\":0,\"decals_2\":0,\"bracelets_2\":0,\"eyebrows_4\":0,\"arms_2\":0,\"chain_1\":22,\"tshirt_1\":32,\"tshirt_2\":0,\"eyebrows_3\":0,\"face\":0,\"sun_2\":0,\"blemishes_2\":0,\"beard_4\":0,\"ears_2\":0,\"chest_3\":0,\"bodyb_2\":0,\"torso_2\":0,\"mask_1\":0,\"shoes_1\":109,\"bags_2\":0,\"decals_1\":0,\"age_1\":0,\"eyebrows_2\":0,\"sun_1\":0,\"bproof_2\":0,\"watches_2\":0,\"chest_2\":0,\"helmet_2\":1,\"beard_3\":0,\"sex\":0,\"lipstick_4\":0,\"lipstick_2\":0,\"shoes_2\":0,\"makeup_1\":0,\"moles_2\":0,\"glasses_2\":0,\"arms\":23,\"blush_1\":0,\"chain_2\":0,\"makeup_2\":0,\"ears_1\":-1,\"bproof_1\":0,\"beard_1\":0,\"age_2\":0,\"hair_1\":0,\"bracelets_1\":-1,\"bags_1\":0,\"makeup_3\":0,\"hair_color_2\":0,\"watches_1\":-1,\"hair_2\":0,\"mask_2\":0,\"blush_2\":0,\"chest_1\":0,\"beard_2\":0,\"complexion_2\":0,\"helmet_1\":32,\"makeup_4\":0,\"bodyb_1\":0,\"blemishes_1\":0,\"pants_1\":46,\"lipstick_1\":0,\"hair_color_1\":0,\"pants_2\":0}}');

#
# Structure for table "shops"
#

CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "shops"
#

INSERT INTO `shops` VALUES (29,'TwentyFourSeven','binoculars',100),(30,'TwentyFourSeven','boxpistol',1400),(31,'TwentyFourSeven','boxsmg',2500),(32,'TwentyFourSeven','boxshot',900),(33,'TwentyFourSeven','boxrifle',10000),(34,'TwentyFourSeven','boxflare',100),(35,'TwentyFourSeven','oxygenmask',1500),(36,'TwentyFourSeven','repairkit',1500);

#
# Structure for table "shops2"
#

CREATE TABLE `shops2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

#
# Data for table "shops2"
#

INSERT INTO `shops2` VALUES (1,'TwentyFourSeven2','zr380',10000),(2,'TwentyFourSeven2','zr3802',15000),(3,'TwentyFourSeven2','zr3803',15000),(4,'TwentyFourSeven2','dominator4',15000),(5,'TwentyFourSeven2','dominator5',20000),(6,'TwentyFourSeven2','dominator6',19000),(7,'TwentyFourSeven2','cerberus',20000),(8,'TwentyFourSeven2','cerberus2',20000),(9,'TwentyFourSeven2','cerberus3',19000),(10,'TwentyFourSeven2','scarab',100000),(11,'TwentyFourSeven2','scarab2',100000),(12,'TwentyFourSeven2','scarab3',100000),(13,'TwentyFourSeven2','boxsniper',15000),(14,'TwentyFourSeven2','bulletproof',20000),(15,'TwentyFourSeven2','boxmg',10000);

#
# Structure for table "user_accounts"
#

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "user_accounts"
#

INSERT INTO `user_accounts` VALUES (1,'steam:1100001158ffdf5','black_money',0),(2,'steam:11000011728e15a','black_money',0),(3,'steam:11000011728e15a','vipcoin',14000),(4,'steam:1100001001bf053','black_money',0),(5,'steam:1100001001bf053','vipcoin',6500),(6,'steam:11000013476e2e4','black_money',0),(7,'steam:11000013476e2e4','vipcoin',0),(8,'steam:110000134fcfab3','black_money',0),(9,'steam:110000134fcfab3','vipcoin',0);

#
# Structure for table "user_inventory"
#

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2564 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

#
# Data for table "user_inventory"
#

INSERT INTO `user_inventory` VALUES (2354,'steam:11000011728e15a','impaler',0),(2355,'steam:11000011728e15a','tulip',0),(2356,'steam:11000011728e15a','boxpistol',3),(2357,'steam:11000011728e15a','zr3802',0),(2358,'steam:11000011728e15a','brutus2',0),(2359,'steam:11000011728e15a','dominator6',0),(2360,'steam:11000011728e15a','impaler4',0),(2361,'steam:11000011728e15a','cerberus3',0),(2362,'steam:11000011728e15a','bruiser',0),(2363,'steam:11000011728e15a','boxsmg',1),(2364,'steam:11000011728e15a','scarab',0),(2365,'steam:11000011728e15a','zr3803',0),(2366,'steam:11000011728e15a','deathbike2',0),(2367,'steam:11000011728e15a','deathbike3',0),(2368,'steam:11000011728e15a','vamos',0),(2369,'steam:11000011728e15a','boxrifle',0),(2370,'steam:11000011728e15a','dominator4',0),(2371,'steam:11000011728e15a','cannabis',0),(2372,'steam:11000011728e15a','deathbike',0),(2373,'steam:11000011728e15a','bandage',4),(2374,'steam:11000011728e15a','box',0),(2375,'steam:11000011728e15a','scarab2',0),(2376,'steam:11000011728e15a','issi4',0),(2377,'steam:11000011728e15a','slamvan6',0),(2378,'steam:11000011728e15a','bruiser3',0),(2379,'steam:11000011728e15a','cerberus2',0),(2380,'steam:11000011728e15a','dominator5',0),(2381,'steam:11000011728e15a','slamvan4',0),(2382,'steam:11000011728e15a','binoculars',1),(2383,'steam:11000011728e15a','brutus3',0),(2384,'steam:11000011728e15a','boxflare',7),(2385,'steam:11000011728e15a','scarab3',0),(2386,'steam:11000011728e15a','bandage2',4),(2387,'steam:11000011728e15a','impaler3',0),(2388,'steam:11000011728e15a','deviant',0),(2389,'steam:11000011728e15a','imperator3',0),(2390,'steam:11000011728e15a','zr380',0),(2391,'steam:11000011728e15a','issi6',0),(2392,'steam:11000011728e15a','boxshot',2),(2393,'steam:11000011728e15a','boxmg',0),(2394,'steam:11000011728e15a','repairkit',2),(2395,'steam:11000011728e15a','imperator',0),(2396,'steam:11000011728e15a','monster5',0),(2397,'steam:11000011728e15a','impaler2',0),(2398,'steam:11000011728e15a','medikit',1),(2399,'steam:11000011728e15a','monster4',0),(2400,'steam:11000011728e15a','slamvan5',0),(2401,'steam:11000011728e15a','marijuana',0),(2402,'steam:11000011728e15a','issi5',0),(2403,'steam:11000011728e15a','oxygenmask',1),(2404,'steam:11000011728e15a','monster3',0),(2405,'steam:11000011728e15a','imperator2',0),(2406,'steam:11000011728e15a','boxsniper',2),(2407,'steam:11000011728e15a','cerberus',0),(2408,'steam:11000011728e15a','bruiser2',0),(2409,'steam:11000011728e15a','bulletproof',1),(2410,'steam:11000011728e15a','brutus',0),(2411,'steam:11000011728e15a','defib',2),(2412,'steam:11000011728e15a','handcuffs',0),(2413,'steam:11000011728e15a','cleankit',0),(2414,'steam:11000011728e15a','weakit',0),(2415,'steam:11000011728e15a','tirekit',0),(2416,'steam:11000011728e15a','firework',0),(2417,'steam:11000011728e15a','drill',0),(2418,'steam:11000011728e15a','lockpick',0),(2419,'steam:11000011728e15a','vehgps',0),(2420,'steam:11000011728e15a','darknet',0),(2421,'steam:11000011728e15a','vape',0),(2422,'steam:11000011728e15a','firstaidkit',0),(2423,'steam:11000011728e15a','handcuffkey',0),(2424,'steam:1100001001bf053','boxrifle',0),(2425,'steam:1100001001bf053','slamvan6',0),(2426,'steam:1100001001bf053','scarab2',0),(2427,'steam:1100001001bf053','vamos',0),(2428,'steam:1100001001bf053','boxpistol',0),(2429,'steam:1100001001bf053','firework',0),(2430,'steam:1100001001bf053','bandage',0),(2431,'steam:1100001001bf053','deviant',0),(2432,'steam:1100001001bf053','repairkit',0),(2433,'steam:1100001001bf053','brutus3',0),(2434,'steam:1100001001bf053','darknet',0),(2435,'steam:1100001001bf053','monster5',0),(2436,'steam:1100001001bf053','brutus',0),(2437,'steam:1100001001bf053','slamvan5',0),(2438,'steam:1100001001bf053','cleankit',0),(2439,'steam:1100001001bf053','boxsniper',0),(2440,'steam:1100001001bf053','boxsmg',0),(2441,'steam:1100001001bf053','drill',0),(2442,'steam:1100001001bf053','bruiser3',0),(2443,'steam:1100001001bf053','monster3',0),(2444,'steam:1100001001bf053','bandage2',0),(2445,'steam:1100001001bf053','weakit',0),(2446,'steam:1100001001bf053','handcuffkey',0),(2447,'steam:1100001001bf053','impaler2',0),(2448,'steam:1100001001bf053','impaler4',0),(2449,'steam:1100001001bf053','marijuana',0),(2450,'steam:1100001001bf053','zr3802',0),(2451,'steam:1100001001bf053','firstaidkit',0),(2452,'steam:1100001001bf053','tulip',0),(2453,'steam:1100001001bf053','handcuffs',0),(2454,'steam:1100001001bf053','imperator',0),(2455,'steam:1100001001bf053','dominator5',0),(2456,'steam:1100001001bf053','imperator3',0),(2457,'steam:1100001001bf053','zr380',0),(2458,'steam:1100001001bf053','deathbike2',0),(2459,'steam:1100001001bf053','vape',0),(2460,'steam:1100001001bf053','issi5',0),(2461,'steam:1100001001bf053','boxflare',0),(2462,'steam:1100001001bf053','issi6',0),(2463,'steam:1100001001bf053','dominator4',0),(2464,'steam:1100001001bf053','cerberus',0),(2465,'steam:1100001001bf053','zr3803',0),(2466,'steam:1100001001bf053','box',0),(2467,'steam:1100001001bf053','issi4',0),(2468,'steam:1100001001bf053','bulletproof',0),(2469,'steam:1100001001bf053','bruiser',0),(2470,'steam:1100001001bf053','lockpick',0),(2471,'steam:1100001001bf053','vehgps',0),(2472,'steam:1100001001bf053','cannabis',0),(2473,'steam:1100001001bf053','binoculars',1),(2474,'steam:1100001001bf053','tirekit',0),(2475,'steam:1100001001bf053','imperator2',0),(2476,'steam:1100001001bf053','monster4',0),(2477,'steam:1100001001bf053','slamvan4',0),(2478,'steam:1100001001bf053','deathbike3',0),(2479,'steam:1100001001bf053','scarab3',0),(2480,'steam:1100001001bf053','boxshot',0),(2481,'steam:1100001001bf053','cerberus3',0),(2482,'steam:1100001001bf053','deathbike',0),(2483,'steam:1100001001bf053','brutus2',0),(2484,'steam:1100001001bf053','oxygenmask',0),(2485,'steam:1100001001bf053','medikit',0),(2486,'steam:1100001001bf053','dominator6',0),(2487,'steam:1100001001bf053','boxmg',0),(2488,'steam:1100001001bf053','impaler',0),(2489,'steam:1100001001bf053','defib',0),(2490,'steam:1100001001bf053','impaler3',0),(2491,'steam:1100001001bf053','cerberus2',0),(2492,'steam:1100001001bf053','scarab',0),(2493,'steam:1100001001bf053','bruiser2',0),(2494,'steam:110000134fcfab3','oxygenmask',0),(2495,'steam:110000134fcfab3','darknet',0),(2496,'steam:110000134fcfab3','boxshot',0),(2497,'steam:110000134fcfab3','boxsmg',0),(2498,'steam:110000134fcfab3','boxpistol',0),(2499,'steam:110000134fcfab3','medikit',0),(2500,'steam:110000134fcfab3','issi6',0),(2501,'steam:110000134fcfab3','firstaidkit',0),(2502,'steam:110000134fcfab3','tirekit',0),(2503,'steam:110000134fcfab3','bulletproof',0),(2504,'steam:110000134fcfab3','deviant',0),(2505,'steam:110000134fcfab3','impaler',0),(2506,'steam:110000134fcfab3','vape',0),(2507,'steam:110000134fcfab3','zr380',0),(2508,'steam:110000134fcfab3','deathbike3',0),(2509,'steam:110000134fcfab3','scarab2',0),(2510,'steam:110000134fcfab3','firework',0),(2511,'steam:110000134fcfab3','imperator3',0),(2512,'steam:110000134fcfab3','vamos',0),(2513,'steam:110000134fcfab3','zr3803',0),(2514,'steam:110000134fcfab3','drill',0),(2515,'steam:110000134fcfab3','imperator',0),(2516,'steam:110000134fcfab3','tulip',0),(2517,'steam:110000134fcfab3','issi4',0),(2518,'steam:110000134fcfab3','marijuana',0),(2519,'steam:110000134fcfab3','defib',0),(2520,'steam:110000134fcfab3','imperator2',0),(2521,'steam:110000134fcfab3','brutus2',0),(2522,'steam:110000134fcfab3','dominator4',0),(2523,'steam:110000134fcfab3','dominator5',0),(2524,'steam:110000134fcfab3','brutus3',0),(2525,'steam:110000134fcfab3','impaler4',0),(2526,'steam:110000134fcfab3','scarab3',0),(2527,'steam:110000134fcfab3','boxmg',0),(2528,'steam:110000134fcfab3','lockpick',0),(2529,'steam:110000134fcfab3','handcuffs',0),(2530,'steam:110000134fcfab3','boxrifle',0),(2531,'steam:110000134fcfab3','boxsniper',0),(2532,'steam:110000134fcfab3','slamvan6',0),(2533,'steam:110000134fcfab3','cannabis',0),(2534,'steam:110000134fcfab3','bruiser3',0),(2535,'steam:110000134fcfab3','repairkit',0),(2536,'steam:110000134fcfab3','boxflare',0),(2537,'steam:110000134fcfab3','bandage',0),(2538,'steam:110000134fcfab3','zr3802',0),(2539,'steam:110000134fcfab3','impaler3',0),(2540,'steam:110000134fcfab3','weakit',0),(2541,'steam:110000134fcfab3','slamvan4',0),(2542,'steam:110000134fcfab3','monster4',0),(2543,'steam:110000134fcfab3','cleankit',0),(2544,'steam:110000134fcfab3','cerberus',0),(2545,'steam:110000134fcfab3','cerberus3',0),(2546,'steam:110000134fcfab3','deathbike2',0),(2547,'steam:110000134fcfab3','slamvan5',0),(2548,'steam:110000134fcfab3','monster3',0),(2549,'steam:110000134fcfab3','box',0),(2550,'steam:110000134fcfab3','issi5',0),(2551,'steam:110000134fcfab3','binoculars',0),(2552,'steam:110000134fcfab3','scarab',0),(2553,'steam:110000134fcfab3','handcuffkey',0),(2554,'steam:110000134fcfab3','vehgps',0),(2555,'steam:110000134fcfab3','monster5',0),(2556,'steam:110000134fcfab3','brutus',0),(2557,'steam:110000134fcfab3','bruiser2',0),(2558,'steam:110000134fcfab3','bandage2',0),(2559,'steam:110000134fcfab3','deathbike',0),(2560,'steam:110000134fcfab3','impaler2',0),(2561,'steam:110000134fcfab3','cerberus2',0),(2562,'steam:110000134fcfab3','dominator6',0),(2563,'steam:110000134fcfab3','bruiser',0);

#
# Structure for table "users"
#

CREATE TABLE `users` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `skin` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `skills` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastdigits` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_house` int(11) DEFAULT 0,
  `hair_1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `armour` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `zetony` int(11) DEFAULT NULL,
  `rp_xp` int(11) NOT NULL DEFAULT 0,
  `rp_rank` int(11) NOT NULL DEFAULT 1,
  `vip` tinyint(1) DEFAULT 0,
  `getStarter` int(11) NOT NULL DEFAULT 0,
  `hotbar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `killcount` int(11) NOT NULL DEFAULT 0,
  `killZombie` int(11) NOT NULL DEFAULT 0,
  `boost_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES ('steam:11000011728e15a',199270236,'license:bad20d86dfc9eaa7b13fd9e717e4bbef245965a9','Facu','{\"sun_2\":0,\"skin\":0,\"tshirt_2\":0,\"hair_color_1\":14,\"complexion_1\":0,\"lipstick_4\":0,\"bags_2\":0,\"shoes_1\":1,\"makeup_1\":9,\"ears_1\":0,\"pants_2\":0,\"bodyb_1\":0,\"ears_2\":0,\"bproof_2\":0,\"chain_2\":0,\"helmet_2\":0,\"bags_1\":55,\"bracelets_1\":16,\"eyebrows_1\":0,\"age_2\":0,\"blemishes_2\":0,\"age_1\":0,\"decals_1\":0,\"eyebrows_3\":0,\"decals_2\":0,\"mask_1\":0,\"blush_3\":0,\"torso_1\":24,\"makeup_3\":11,\"beard_2\":0,\"pants_1\":64,\"blemishes_1\":0,\"lipstick_1\":3,\"watches_1\":11,\"sun_1\":0,\"arms\":19,\"hair_1\":64,\"hair_color_2\":0,\"mask_2\":0,\"moles_2\":0,\"bracelets_2\":1,\"blush_2\":0,\"chain_1\":34,\"glasses_1\":-1,\"sex\":1,\"hair_2\":0,\"watches_2\":0,\"face\":45,\"chest_1\":0,\"chest_3\":0,\"chest_2\":0,\"torso_2\":0,\"moles_1\":0,\"helmet_1\":20,\"makeup_4\":0,\"eyebrows_2\":0,\"eyebrows_4\":0,\"glasses_2\":0,\"beard_3\":0,\"arms_2\":0,\"makeup_2\":10,\"lipstick_2\":10,\"lipstick_3\":23,\"bproof_1\":52,\"blush_1\":0,\"complexion_2\":0,\"tshirt_1\":186,\"beard_1\":0,\"beard_4\":0,\"bodyb_2\":0,\"shoes_2\":0}','unemployed',0,'[{\"ammo\":0,\"name\":\"WEAPON_NIGHTSTICK\",\"components\":[],\"label\":\"Nightstick\"},{\"ammo\":0,\"name\":\"WEAPON_BAT\",\"components\":[],\"label\":\"Bat\"},{\"ammo\":179,\"name\":\"WEAPON_PISTOL\",\"components\":[\"clip_default\"],\"label\":\"Pistol\"},{\"ammo\":179,\"name\":\"WEAPON_PISTOL50\",\"components\":[\"clip_default\"],\"label\":\"Pistol .50\"},{\"ammo\":15,\"name\":\"WEAPON_STUNGUN\",\"components\":[],\"label\":\"Taser\"},{\"ammo\":0,\"name\":\"WEAPON_MACHETE\",\"components\":[],\"label\":\"Machete\"}]','{\"z\":30.7,\"y\":-931.6,\"x\":185.0}',2146583647,0,'superadmin','Facundo','Utrico','2000-03-12',NULL,'192',0,NULL,'[{\"percent\":41.555,\"name\":\"hunger\",\"val\":415550},{\"percent\":41.555,\"name\":\"thirst\",\"val\":415550}]',0,NULL,NULL,0,NULL,0,NULL,3050,3,0,0,'{\"1\":{\"name\":\"WEAPON_PISTOL\",\"type\":\"item_weapon\",\"label\":\"Pistol\"}}',0,19,1577),('steam:1100001001bf053',24,'license:6d56b73353ba8f4b2996fb6b70b34086d630c773','extassy','{\"helmet_1\":-1,\"cheeks_2\":0,\"torso_2\":5,\"hair_color_1\":0,\"bproof_1\":0,\"bracelets_1\":-1,\"arms_2\":0,\"eyebrows_2\":0,\"hair_2\":0,\"lipstick_1\":0,\"hair_color_2\":0,\"beard_2\":0,\"makeup_4\":0,\"ears_2\":0,\"shoes_2\":1,\"bodyb_1\":0,\"arms\":5,\"sun_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"sun_1\":0,\"tshirt_2\":0,\"blush_2\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"decals_2\":0,\"chest_1\":0,\"pants_2\":1,\"lipstick_2\":0,\"torso_1\":36,\"sex\":0,\"watches_2\":0,\"chest_3\":0,\"complexion_2\":0,\"makeup_1\":0,\"helmet_2\":0,\"watches_1\":-1,\"shoes_1\":42,\"blemishes_1\":0,\"age_2\":0,\"age_1\":0,\"lip_thickness\":0,\"blush_3\":0,\"mask_1\":0,\"bags_1\":0,\"blush_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"eyebrows_4\":0,\"chain_1\":0,\"complexion_1\":0,\"beard_3\":0,\"tshirt_1\":15,\"jaw_1\":0,\"glasses_1\":-1,\"makeup_3\":0,\"skin\":0,\"ears_1\":-1,\"glasses_2\":0,\"beard_4\":0,\"chest_2\":0,\"mom\":31,\"decals_1\":0,\"hair_1\":0,\"bodyb_2\":0,\"blemishes_2\":0,\"bracelets_2\":0,\"bags_2\":0,\"moles_2\":0,\"face\":0,\"lipstick_3\":0,\"mask_2\":0,\"pants_1\":54,\"beard_1\":0}','unemployed',0,'[{\"ammo\":0,\"label\":\"Bat\",\"components\":[],\"name\":\"WEAPON_BAT\"},{\"ammo\":0,\"label\":\"Pistol\",\"components\":[\"clip_default\"],\"name\":\"WEAPON_PISTOL\"},{\"ammo\":0,\"label\":\"Minigun\",\"components\":[],\"name\":\"WEAPON_MINIGUN\"},{\"ammo\":46,\"label\":\"Taser\",\"components\":[],\"name\":\"WEAPON_STUNGUN\"}]','{\"z\":52.1,\"y\":-1027.0,\"x\":-50.5}',0,0,'superadmin','Fernando','Gago','2021-11-17','muž','',0,NULL,'[{\"val\":216500,\"name\":\"hunger\",\"percent\":21.65},{\"val\":216500,\"name\":\"thirst\",\"percent\":21.65}]',0,NULL,NULL,0,NULL,0,NULL,2050,2,0,0,'{\"2\":{\"name\":\"WEAPON_MINIGUN\",\"label\":\"Minigun\",\"type\":\"item_weapon\"},\"1\":{\"name\":\"WEAPON_PISTOL\",\"label\":\"Pistol\",\"type\":\"item_weapon\"}}',0,44,0),('steam:110000134fcfab3',0,'license:6df76c6f9bea745e968bafb5b447159598ed4ba6','Isaacv89','{\"hair_color_1\":0,\"lipstick_2\":0,\"helmet_2\":0,\"tshirt_1\":15,\"hair_color_2\":0,\"hair_1\":0,\"eyebrows_2\":0,\"tshirt_2\":0,\"bracelets_1\":-1,\"moles_1\":0,\"shoes_2\":0,\"blemishes_2\":0,\"bags_1\":0,\"decals_1\":0,\"pants_2\":0,\"ears_2\":0,\"chest_3\":0,\"sun_2\":0,\"beard_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"eyebrows_4\":0,\"blush_2\":0,\"age_1\":0,\"beard_3\":0,\"complexion_2\":0,\"arms\":18,\"age_2\":0,\"lipstick_3\":0,\"torso_1\":59,\"bags_2\":0,\"chain_2\":0,\"makeup_2\":0,\"bracelets_2\":0,\"bodyb_2\":0,\"chest_2\":0,\"blemishes_1\":3,\"watches_2\":0,\"makeup_1\":0,\"lipstick_1\":0,\"mask_1\":0,\"sex\":0,\"skin\":0,\"face\":0,\"shoes_1\":6,\"blush_3\":0,\"chain_1\":0,\"beard_4\":0,\"blush_1\":0,\"decals_2\":0,\"eyebrows_3\":0,\"glasses_2\":0,\"helmet_1\":-1,\"pants_1\":180,\"arms_2\":0,\"bodyb_1\":4,\"watches_1\":-1,\"bproof_1\":0,\"mask_2\":0,\"beard_2\":0,\"hair_2\":0,\"complexion_1\":1,\"glasses_1\":-1,\"torso_2\":0,\"makeup_3\":0,\"chest_1\":0,\"sun_1\":0,\"moles_2\":0,\"eyebrows_1\":0,\"ears_1\":-1,\"makeup_4\":0}','unemployed',0,'[]','{\"x\":129.0,\"y\":-906.6,\"z\":30.2}',0,0,'superadmin','','','','','',0,NULL,'[{\"name\":\"hunger\",\"val\":900350,\"percent\":90.035},{\"name\":\"thirst\",\"val\":900350,\"percent\":90.035}]',0,NULL,NULL,0,NULL,0,NULL,0,1,0,0,NULL,0,0,0);

#
# Structure for table "vehicle_categories"
#

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "vehicle_categories"
#

INSERT INTO `vehicle_categories` VALUES ('super','Super');

#
# Structure for table "vehicle_sold"
#

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "vehicle_sold"
#


#
# Structure for table "vehiclekeys"
#

CREATE TABLE `vehiclekeys` (
  `plate` varchar(64) NOT NULL DEFAULT '',
  `keys` longtext DEFAULT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "vehiclekeys"
#


#
# Structure for table "vehicles"
#

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# Data for table "vehicles"
#

INSERT INTO `vehicles` VALUES ('Adder','adder',900000,'super'),('Autarch','autarch',1955000,'super');

#
# Structure for table "vipshops"
#

CREATE TABLE `vipshops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

#
# Data for table "vipshops"
#

INSERT INTO `vipshops` VALUES (29,'VipShopMainSquare','binoculars',100),(30,'VipShopMainSquare','boxpistol',1400),(31,'VipShopMainSquare','boxsmg',2500),(32,'VipShopMainSquare','boxshot',900),(33,'VipShopMainSquare','boxrifle',10000),(34,'VipShopMainSquare','boxflare',100),(35,'VipShopMainSquare','oxygenmask',1500),(36,'VipShopMainSquare','repairkit',1500);

#
# Structure for table "weashops"
#

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 25000,
  `level` int(11) NOT NULL DEFAULT 50,
  PRIMARY KEY (`id`,`item`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4;

#
# Data for table "weashops"
#

INSERT INTO `weashops` VALUES (1,'WEAPON_PISTOL',300,1),(3,'WEAPON_FLASHLIGHT',60,5),(5,'WEAPON_MACHETE',90,10),(8,'WEAPON_NIGHTSTICK',150,15),(10,'WEAPON_BAT',100,20),(12,'WEAPON_STUNGUN',50,21),(14,'WEAPON_MICROSMG',1700,22),(16,'WEAPON_PUMPSHOTGUN',3500,23),(18,'WEAPON_ASSAULTRIFLE',11000,24),(20,'WEAPON_SPECIALCARBINE',16500,25),(22,'WEAPON_SNIPERRIFLE',24000,26),(24,'WEAPON_FIREWORK',20000,27),(26,'WEAPON_GRENADE',650,28),(28,'WEAPON_BZGAS',350,29),(30,'WEAPON_FIREEXTINGUISHER',100,30),(32,'WEAPON_BALL',50,31),(34,'WEAPON_SMOKEGRENADE',100,32),(35,'WEAPON_APPISTOL',1100,33),(36,'WEAPON_CARBINERIFLE',12000,34),(37,'WEAPON_HEAVYSNIPER',30000,35),(38,'WEAPON_MINIGUN',45000,36),(39,'WEAPON_RAILGUN',50000,37),(40,'WEAPON_STICKYBOMB',500,38),(41,'WEAPON_COMBATPISTOL',25000,3),(42,'WEAPON_PISTOL50',30000,5),(43,'WEAPON_SNSPISTOL',30000,5),(44,'WEAPON_HEAVYPISTOL',30000,5),(45,'WEAPON_VINTAGEPISTOL',30000,7),(46,'WEAPON_MACHINEPISTOL',30000,5),(47,'WEAPON_REVOLVER',30000,6),(48,'WEAPON_MARKSMANPISTOL',30000,6),(49,'WEAPON_DOUBLEACTION',30000,5),(50,'WEAPON_SMG',30000,5),(51,'WEAPON_ASSAULTSMG',3000,21),(53,'WEAPON_MINISMG',3000,5),(54,'WEAPON_GOLFCLUB',30000,5),(55,'WEAPON_PUMPSHOTGUN',3000,5),(56,'WEAPON_PISTOL_MK2',32131,313),(57,'WEAPON_REVOLVER_MK2',3000,3),(58,'WEAPON_PUMPSHOTGUN_MK2',3000,2),(59,'WEAPON_SAWNOFFSHOTGUN',4000,45),(60,'WEAPON_ASSAULTSHOTGUN',23123,2),(61,'WEAPON_BULLPUPSHOTGUN',3000,5),(62,'WEAPON_HEAVYSHOTGUN',2131,5),(63,'WEAPON_DBSHOTGUN',1231,2312),(64,'WEAPON_AUTOSHOTGUN',2321,51),(65,'WEAPON_MUSKET',3232,55),(66,' WEAPON_ASSAULTRIFLE_MK2',1231,2312),(68,'WEAPON_ADVANCEDRIFLE',25000,50),(69,'WEAPON_COMBATMG_MK2',25000,50),(70,'WEAPON_SPECIALCARBINE_MK2',25000,50),(71,'WEAPON_BULLPUPRIFLE',25000,50),(72,'WEAPON_BULLPUPRIFLE_MK2',25000,50),(73,'WEAPON_COMBATMG_MK2',25000,50),(74,'WEAPON_HEAVYSNIPER_MK2',25000,50),(75,'WEAPON_MARKSMANRIFLE_MK2',25000,50),(76,'WEAPON_COMPACTRIFLE',25000,50),(77,'WEAPON_MG',25000,50),(78,'WEAPON_COMBATMG',25000,50),(79,'WEAPON_GUSENBERG',25000,50),(82,'WEAPON_MARKSMANRIFLE',25000,50),(83,'WEAPON_MINIGUN',25000,50),(84,'WEAPON_RAILGUN',25000,50),(85,'WEAPON_STUNGUN',25000,50),(87,'WEAPON_HOMINGLAUNCHER',25000,50),(88,'WEAPON_GRENADE',25000,50),(89,'WEAPON_BOTTLE',25000,50),(90,'WEAPON_KNIFE',25000,50),(91,'WEAPON_DAGGER',25000,50),(92,'WEAPON_KNIFE',25000,50),(93,'WEAPON_HAMMER',25000,50),(94,'WEAPON_GOLFCLUB',25000,50),(95,'WEAPON_COMPACTLAUNCHER',25000,50),(96,'WEAPON_PROXMINE',25000,50),(97,'WEAPON_PETROLCAN',25000,50),(98,'WEAPON_RPG',25000,50),(99,'WEAPON_FLAREGUN',25000,50),(100,'WEAPON_WRENCH',25000,50),(101,'WEAPON_BATTLEAXE',25000,50),(102,'GADGET_PARACHUTE',25000,50),(103,'WEAPON_SWITCHBLADE',25000,50),(104,'WEAPON_GRENADELAUNCHER',25000,50),(105,'WEAPON_COMBATPDW',25000,50),(106,'WEAPON_KNUCKLE',25000,50),(107,'WEAPON_FLARE',25000,50),(108,'WEAPON_SNOWBALL',25000,50),(109,'WEAPON_MOLOTOV',25000,50),(110,'WEAPON_FLASHBANG',25000,50),(111,'WEAPON_POOLCUE',25000,50),(112,'WEAPON_HATCHET',25000,50),(113,'WEAPON_SNSPISTOL_MK2',25000,50),(114,'WEAPON_HATCHET',25000,50);

#
# Structure for table "weashops2"
#

CREATE TABLE `weashops2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

#
# Data for table "weashops2"
#

INSERT INTO `weashops2` VALUES (1,'GunShop','WEAPON_PISTOL',300),(2,'GunShop','WEAPON_FLASHLIGHT',60),(3,'GunShop','WEAPON_MACHETE',90),(4,'GunShop','WEAPON_NIGHTSTICK',150),(5,'GunShop','WEAPON_BAT',100),(6,'GunShop','WEAPON_STUNGUN',50),(7,'GunShop','WEAPON_MICROSMG',1400),(8,'GunShop','WEAPON_PUMPSHOTGUN',3400),(9,'GunShop','WEAPON_ASSAULTRIFLE',10000),(10,'GunShop','WEAPON_SPECIALCARBINE',15000),(11,'GunShop','WEAPON_SNIPERRIFLE',22000),(12,'GunShop','WEAPON_FIREWORK',18000),(13,'GunShop','WEAPON_GRENADE',500),(14,'GunShop','WEAPON_BZGAS',200),(15,'GunShop','WEAPON_FIREEXTINGUISHER',100),(16,'GunShop','WEAPON_BALL',50),(17,'GunShop','WEAPON_SMOKEGRENADE',100);
