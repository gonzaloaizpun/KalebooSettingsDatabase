USE `kaleboo`;

# ================================================================================================


INSERT INTO `setting_attribute_types` VALUES
	(1, 'range_min'),
	(2, 'range_max'),
	(3, 'range_step');



INSERT INTO `setting_types` VALUES
	(1, 'email', NULL, NULL),
	(2, 'money', '$', NULL),
	(3, 'percentage', NULL, '%');

