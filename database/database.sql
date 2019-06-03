
DROP DATABASE IF EXISTS `kaleboo`;

CREATE DATABASE `kaleboo` CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `kaleboo`;

GRANT ALL PRIVILEGES ON kaleboo.* To 'kaleboo'@'localhost' IDENTIFIED BY 'WwFFTRDJ7s2RgPWx';
GRANT ALL PRIVILEGES ON kaleboo.* To 'kaleboo'@'%' IDENTIFIED BY 'WwFFTRDJ7s2RgPWx';