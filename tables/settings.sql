USE `kaleboo`;

# ================================================================================================

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_setting_type` int(10) unsigned NOT NULL,
 `id_setting_group` int(10) unsigned NOT NULL,
 `description` varchar(256) NOT NULL,
 `amount` varchar(256) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL DEFAULT 1,
 `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
 `updated_at` datetime ON UPDATE CURRENT_TIMESTAMP,

 PRIMARY KEY (`id`),
 KEY `id_setting_type` (`id_setting_type`),
 KEY `id_setting_group` (`id_setting_group`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `setting_types`;

CREATE TABLE `setting_types` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(256) NOT NULL,
 `prefix` varchar(16) NULL,
 `sufix` varchar(16) NULL,

 PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `setting_groups`;

CREATE TABLE `setting_groups` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(256) NOT NULL,

 PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `setting_attributes`;

CREATE TABLE `setting_attributes` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_setting` int(10) unsigned NOT NULL,
 `id_attribute` int(10) unsigned NOT NULL,
 `description` varchar(256) NOT NULL,

 PRIMARY KEY (`id`),
 KEY `id_attribute` (`id_attribute`),
 KEY `id_setting` (`id_setting`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `attributes`;

CREATE TABLE `attributes` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(256) NOT NULL,

 PRIMARY KEY (`id`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;
