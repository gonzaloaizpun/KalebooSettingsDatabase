USE `kaleboo`;

# ================================================================================================

INSERT INTO `settings` VALUES
	(1, 3, 1, 'Beneficio Financiero', '4.0', 1, NULL, NULL),
	(2, 3, 1, 'Costo Financiero', '4.0', 1, NULL, NULL);


INSERT INTO `setting_types` VALUES
	(1, 'email', NULL, NULL),
	(2, 'money', '$', NULL),
	(3, 'percentage', NULL, '%');


INSERT INTO `setting_groups` VALUES
	(1, 'Tasa de Interés');


INSERT INTO `setting_attributes` VALUES 
	(1, 1, 6, '1'),
	(2, 2, 6, '1');


INSERT INTO `attributes` VALUES
	(1, 'range_min'),
	(2, 'range_max'),
	(3, 'range_step'),
	(4, 'valid_from'),
	(5, 'valid_to'),
	(6, 'is_default');




