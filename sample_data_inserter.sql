INSERT INTO countries (id, name) VALUES (1, 'Hungary');
INSERT INTO countries (id, name) VALUES (2, 'Germany');
INSERT INTO countries (id, name) VALUES (3, 'Uganda');
INSERT INTO countries (id, name) VALUES (4, 'United Kingdom');

INSERT INTO origins (id, name, country_id) VALUES (1, 'CBA', 1);
INSERT INTO origins (id, name, country_id) VALUES (2, 'SPAR', 2);
INSERT INTO origins (id, name, country_id) VALUES (3, 'ALDI', 2);
INSERT INTO origins (id, name, country_id) VALUES (4, 'Tesco', 4);

INSERT INTO units (id, name) VALUES (1, 'grams');
INSERT INTO units (id, name) VALUES (2, 'decagrams');
INSERT INTO units (id, name) VALUES (3, 'kilograms');
INSERT INTO units (id, name) VALUES (4, 'milliliters');
INSERT INTO units (id, name) VALUES (5, 'centiliters');
INSERT INTO units (id, name) VALUES (6, 'deciliters');
INSERT INTO units (id, name) VALUES (7, 'liters');
INSERT INTO units (id, name) VALUES (8, 'pieces');

INSERT INTO manufacturers (id, name, country_id) VALUES (1, 'Makói Hagyma Kft.', 1);
INSERT INTO manufacturers (id, name, country_id) VALUES (2, 'Zalabaromfi', 1);
INSERT INTO manufacturers (id, name, country_id) VALUES (3, 'Spice Master', 2);
INSERT INTO manufacturers (id, name, country_id) VALUES (4, 'Mwataba Ukuela Ogondaba', 3);

INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (1, 'őrölt paprika', 3, 1500, 1, 1, 150);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (2, 'egész hagyma', 3, 300, 1, 1, 60);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (3, 'csirke alsócomb', 3, 700, 1, 2, 100);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (4, 'csirke felsőcomb', 3, 700, 1, 2, 100);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (5, 'egész csirkecomb', 3, 700, 1, 2, 100);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (6, 'tejföl 20%', 6, 120, 3, 4, 20);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (7, 'só', 3, 100, 1, 3, 9999);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (8, 'őrölt bors', 3, 6000, 1, 3, 300);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (9, 'tejszín', 7, 1500, 1, 4, 30);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (10, 'sárgarépa', 3, 400, 1, 1, 30);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (11, 'petrezselyemgyökér', 3, 400, 1, 1, 30);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (12, 'zöldborsó', 3, 400, 1, 1, 30);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (13, 'sárgarépa', 3, 400, 1, 1, 30);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (14, 'tojás', 8, 35, 1, 2, 40);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (15, 'liszt', 3, 120, 1, 4, 60);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (16, 'zsemlemorzsa', 3, 200, 1, 4, 60);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (17, 'sertés karaj', 3, 1300, 1, 4, 30);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (18, 'krumpli', 3, 240, 1, 1, 60);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (19, 'alaszkai tőkehalfilé', 3, 1300, 1, 4, 100);
INSERT INTO materials (id, name, unit_id, price_per_unit, origin_id, manufacturer_id, expiration) VALUES (20, 'napraforgó étolaj', 7, 480, 1, 1, 9999);

INSERT INTO stock (id, material_id, quantity, acquisition_date) VALUES (1, 1, 0.33, '2017-06-22');
INSERT INTO stock (id, material_id, quantity, acquisition_date) VALUES (2, 2, 0.5, '2017-06-14');
INSERT INTO stock (id, material_id, quantity, acquisition_date) VALUES (3, 11, 0.2, '2017-06-26');

INSERT INTO recipes (id, name, country_id, instructions, rating, mealtime, type, completion_time) VALUES (1, 'paprikás csirkecomb', 1, 'Csinálj valamit.', 10, 'ebéd', 'főétel', 60);
INSERT INTO recipes (id, name, country_id, instructions, rating, mealtime, type, completion_time) VALUES (2, 'tárkonyos raguleves', 1, 'Csinálj valamit.', 10, 'ebéd', 'leves', 90);
INSERT INTO recipes (id, name, country_id, instructions, rating, mealtime, type, completion_time) VALUES (3, 'rántott sertésborda', 1, 'Csinálj valamit.', 10, 'ebéd', 'főétel', 30);
INSERT INTO recipes (id, name, country_id, instructions, rating, mealtime, type, completion_time) VALUES (4, 'fish and chips', 1, 'Csinálj valamit.', 6, 'ebéd', 'főétel', 40);

INSERT INTO recipe_materials (id, recipe_id, material_id, unit_id, quantity) VALUES (1, 1, 1, 3, 0.005);
INSERT INTO recipe_materials (id, recipe_id, material_id, unit_id, quantity) VALUES (2, 1, 2, 3, 0.015);
INSERT INTO recipe_materials (id, recipe_id, material_id, unit_id, quantity) VALUES (3, 1, 4, 3, 0.333);
INSERT INTO recipe_materials (id, recipe_id, material_id, unit_id, quantity) VALUES (4, 1, 20, 7, 0.05);
INSERT INTO recipe_materials (id, recipe_id, material_id, unit_id, quantity) VALUES (5, 1, 6, 6, 1);
INSERT INTO recipe_materials (id, recipe_id, material_id, unit_id, quantity) VALUES (6, 1, 7, 7, 0.003);
INSERT INTO recipe_materials (id, recipe_id, material_id, unit_id, quantity) VALUES (7, 1, 8, 7, 0.006);