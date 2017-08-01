DROP TABLE IF EXISTS recipes CASCADE;
DROP TABLE IF EXISTS materials CASCADE;
DROP TABLE IF EXISTS stock CASCADE;
DROP TABLE IF EXISTS origins CASCADE;
DROP TABLE IF EXISTS manufacturers CASCADE;
DROP TABLE IF EXISTS units CASCADE;
DROP TABLE IF EXISTS countries CASCADE;
DROP TABLE IF EXISTS recipe_materials CASCADE;


CREATE TABLE recipes (
    id SERIAL PRIMARY KEY NOT NULL,
    name character varying(100) NOT NULL,
    country_id smallint,
    instructions text,
    rating numeric,
    mealtime character varying(200),
    type character varying(200),
    completion_time smallint
);


CREATE TABLE materials (
    id SERIAL PRIMARY KEY NOT NULL,
    name character varying(100) NOT NULL,
    unit_id smallint,
    price_per_unit integer,
    origin_id smallint,
    manufacturer_id smallint,
    expiration smallint
);


CREATE TABLE stock (
    id SERIAL PRIMARY KEY NOT NULL,
    material_id smallint,
    quantity decimal,
    acquisition_date date
);


CREATE TABLE origins (
    id SERIAL PRIMARY KEY NOT NULL,
    name character varying(100),
    country_id smallint
);


CREATE TABLE manufacturers (
    id SERIAL PRIMARY KEY NOT NULL,
    name character varying(100) NOT NULL,
    country_id smallint
);


CREATE TABLE units (
    id SERIAL PRIMARY KEY NOT NULL,
    name character varying(100) NOT NULL
);


CREATE TABLE countries (
    id SERIAL PRIMARY KEY NOT NULL,
    name character varying(100) NOT NULL
);

CREATE TABLE recipe_materials (
    id SERIAL PRIMARY KEY NOT NULL,
    recipe_id smallint,
    material_id smallint,
    unit_id smallint,
    quantity smallint
);


ALTER TABLE ONLY recipes
    ADD CONSTRAINT fk_recipes_country_id FOREIGN KEY (country_id) REFERENCES countries(id);


ALTER TABLE ONLY materials
    ADD CONSTRAINT fk_materials_unit_id FOREIGN KEY (unit_id) REFERENCES units(id),
    ADD CONSTRAINT fk_materials_origin_id FOREIGN KEY (origin_id) REFERENCES origins(id),
    ADD CONSTRAINT fk_materials_manufacturer_id FOREIGN KEY (manufacturer_id) REFERENCES manufacturers(id);


ALTER TABLE ONLY stock
    ADD CONSTRAINT fk_stock_material_id FOREIGN KEY (material_id) REFERENCES materials(id);


ALTER TABLE ONLY origins
    ADD CONSTRAINT fk_origins_country_id FOREIGN KEY (country_id) REFERENCES countries(id);


ALTER TABLE ONLY manufacturers
    ADD CONSTRAINT fk_manufacturers_country_id FOREIGN KEY (country_id) REFERENCES countries(id);

ALTER TABLE ONLY recipe_materials
    ADD CONSTRAINT fk_recipe_materials_recipe_id FOREIGN KEY (recipe_id) REFERENCES recipes(id),
    ADD CONSTRAINT fk_recipe_materials_material_id FOREIGN KEY (material_id) REFERENCES materials(id),
    ADD CONSTRAINT fk_recipe_materials_unit_id FOREIGN KEY (unit_id) REFERENCES units(id);
