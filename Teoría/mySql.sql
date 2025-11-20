-- =============================================
-- File: 00_comments.sql
-- =============================================

-- Comentario en una lína

-- Obtiene todos los datos de la tabla "users"
SELECT * FROM users;

-- Obtiene todos los nombres de la tabla "users"
SELECT name FROM users;

-- Obtiene todos los identificadores y nombres de la tabla "users"
SELECT user_id, name FROM users;

-- =============================================
-- File: 02_distinct.sql
-- =============================================

-- Obtiene todos los datos distintos entre sí de la tabla "users"
SELECT DISTINCT * FROM users;

-- Obtiene todos los valores distintos referentes al atributo edad de la tabla "users"
SELECT DISTINCT age FROM users;

-- =============================================
-- File: 03_where.sql
-- =============================================

-- Filtra todos los datos de la tabla "users" con edad igual a 15
SELECT * FROM users WHERE age = 15;

-- Filtra todos los nombres de la tabla "users" con edad igual a 15
SELECT name FROM users WHERE age = 15;

-- Filtra todos los nombres distintos de la tabla "users" con edad igual a 15
SELECT DISTINCT name FROM users WHERE age = 15;

-- Filtra todas las edades distintas de la tabla "users" con edad igual a 15
SELECT DISTINCT age FROM users WHERE age = 15;

-- =============================================
-- File: 04_order_by.sql
-- =============================================

-- Ordena todos los datos de la tabla "users" por edad (ascendente por defecto)
SELECT * FROM users ORDER BY age;

-- Ordena todos los datos de la tabla "users" por edad de manera ascendente
SELECT * FROM users ORDER BY age ASC;

-- Ordena todos los datos de la tabla "users" por edad de manera descendente
SELECT * FROM users ORDER BY age DESC;

-- Obtiene todos los datos de la tabla "users" con email igual a sara@gmail.com y los ordena por edad de manera descendente
SELECT * FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;

-- Obtiene todos los nombres de la tabla "users" con email igual a sara@gmail.com y los ordena por edad de manera descendente
SELECT name FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;

-- =============================================
-- File: 05_like.sql
-- =============================================

-- Obtiene todos datos de la tabla "users" que contienen un email con el texto "gmail.com" en su parte final
SELECT * FROM users WHERE email LIKE '%gmail.com';

-- Obtiene todos datos de la tabla "users" que contienen un email con el texto "sara" en su parte inicial
SELECT * FROM users WHERE email LIKE 'sara%';

-- Obtiene todos datos de la tabla "users" que contienen un email una arroba
SELECT * FROM users WHERE email LIKE '%@%';

-- =============================================
-- File: 06_and_or_not.sql
-- =============================================

-- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com
SELECT * FROM users WHERE NOT email = 'sara@gmail.com';

-- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com y edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND age = 15;

-- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com o edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15;

-- =============================================
-- File: 07_limit.sql
-- =============================================

-- Obtiene las 3 primeras filas de la tabla "users"
SELECT * FROM users LIMIT 3;

-- Obtiene las 2 primeras filas de la tabla "users" con email distinto a sara@gmail.com o edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15 LIMIT 2;

-- =============================================
-- File: 08_null.sql
-- =============================================

-- Obtiene todos datos de la tabla "users" de la tabla "users" con email nulo
SELECT * FROM users WHERE email IS NULL;

-- Obtiene todos datos de la tabla "users" de la tabla "users" con email no nulo
SELECT * FROM users WHERE email IS NOT NULL;

-- Obtiene todos datos de la tabla "users" de la tabla "users" con email no nulo y edad igual a 15
SELECT * FROM users WHERE email IS NOT NULL AND age = 15;

-- Obtiene el nombre, apellido y edad de la tabla "users", y si la edad es nula la muestra como 0
SELECT name, surname, IFNULL(age, 0) AS age FROM users;

-- =============================================
-- File: 09_min_max.sql
-- =============================================

-- Obtiene el valor menor del campo edad de la tabla "users"
Select MIN(age) FROM users;

-- Obtiene el valor mayor del campo edad de la tabla "users"
Select MAX(age) FROM users;

-- =============================================
-- File: 10_count.sql
-- =============================================

-- Cuenta cuantas filas contiene la tabla "users"
Select COUNT(*) FROM users;

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users"
Select COUNT(age) FROM users;

-- =============================================
-- File: 11_sum.sql
-- =============================================

-- Suma todos los valores del campo edad de la tabla "users"
Select SUM(age) FROM users;

-- =============================================
-- File: 12_avg.sql
-- =============================================

-- Obitne la media de edad de la tabla "users"
Select AVG(age) FROM users;

-- =============================================
-- File: 13_in.sql
-- =============================================

-- Ordena todos los datos de la tabla "users" con nombre igual a brais y sara
SELECT * FROM users WHERE name IN ('brais', 'sara')

-- =============================================
-- File: 14_between.sql
-- =============================================

-- Ordena todos los datos de la tabla "users" con edad comprendida entre 20 y 30
SELECT * FROM users WHERE age BETWEEN 20 AND 30

-- =============================================
-- File: 15_alias.sql
-- =============================================

-- Establece el alias 'Fecha de inicio en programación' a la columna init_date
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE name = 'Brais'

-- Consulta igual que la anterior. Representa la posibilidad de usar comillas dobles para cadenas
SELECT name, init_date AS "Fecha de inicio en programación" FROM users WHERE name = "Brais"

-- =============================================
-- File: 16_concat.sql
-- =============================================

-- Concatena en una sola columa los campos nombre y apellido
SELECT CONCAT('Nombre: ', name, ', Apellidos: ', surname) FROM users

-- Concatena en una sola columa los campos nombre y apellido y le establece el alias 'Nombre completo'
SELECT CONCAT('Nombre: ', name, ', Apellidos: ', surname) AS 'Nombre completo' FROM users

-- =============================================
-- File: 17_group_by.sql
-- =============================================

-- Agrupa los resultados por edad diferente
SELECT MAX(age) FROM users GROUP BY age

-- Agrupa los resultados por edad diferente y cuenta cuantos registros existen de cada una
SELECT COUNT(age), age FROM users GROUP BY age

-- Agrupa los resultados por edad diferente, cuenta cuantos registros existen de cada una y los ordena
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC

-- Agrupa los resultados por edad diferente mayor de 15, cuenta cuantos registros existen de cada una y los ordena
SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC

-- =============================================
-- File: 18_having.sql
-- =============================================

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users" mayor que 3
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3

-- =============================================
-- File: 19_case.sql
-- =============================================

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de cadenas de texto según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de valores booleanos según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 17 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;

-- =============================================
-- File: 01_insert.sql
-- =============================================

-- Inserta un registro con identificador, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) VALUES (8, 'María', 'López')

-- Inserta un registro con nombre y apellido en la tabla "users"
INSERT INTO users (name, surname) VALUES ('Paco', 'Pérez')

-- Inserta un registro con identificador no correlativo, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) VALUES (11, 'El', 'Merma')

-- =============================================
-- File: 02_update.sql
-- =============================================

-- Estable el valor 21 para la edad del registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = '21' WHERE user_id = 11

-- Estable el valor 20 para la edad del registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = '20' WHERE user_id = 11

-- Estable edad y una fecha para registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = 20, init_date = '2020-10-12' WHERE user_id = 11

-- =============================================
-- File: 03_delete.sql
-- =============================================

-- Elimina el registro de la tabla "users" con identificador igual a 11
DELETE FROM users WHERE user_id = 11;

-- =============================================
-- File: 01_create_database.sql
-- =============================================

-- Crea una base de datos llamada "test"
CREATE DATABASE test;

-- =============================================
-- File: 02_drop_database.sql
-- =============================================

-- Elimina la base de datos llamada "test"
DROP DATABASE test;

-- =============================================
-- File: 01_create_table.sql
-- =============================================

-- Crea una tabla llamada "persons" con nombre de columna (atributos) de tipo int, varchar y date
CREATE TABLE persons (
	id int,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);

-- NOT NULL: Obliga a que el campo id posea siempre un valor no nulo
CREATE TABLE persons2 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created date
);

-- UNIQUE: Obliga a que el campo id posea valores diferentes
CREATE TABLE persons3 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id)
);

-- PRIMARY KEY: Establece el campo id como clave primaria para futuras relaciones con otras tablas
CREATE TABLE persons4 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
);

-- CHECK: Establece que el campo age sólo podrá contener valores mayores o iguales a 18
CREATE TABLE persons5 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

-- DEFAULT: Establece un valor por defecto en el campo created correspondiente a la fecha del sistema
CREATE TABLE persons6 (
	id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

-- AUTO_INCREMENT: Indica que el campo id siempre se va a incrementar en 1 con cada nuevo inserto
CREATE TABLE persons7 (
	id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

-- =============================================
-- File: 02_drop_table.sql
-- =============================================

-- Elimina la tabla llamada "persons8"
DROP TABLE persons8;

-- =============================================
-- File: 03_alter_table.sql
-- =============================================

-- ADD: Añade un nuevo atributo surname a la tabla "persons8"
ALTER TABLE persons8
ADD surname varchar(150);

-- RENAME COLUMN: Renombra el atributo surname a description en la tabla "persons8"
ALTER TABLE persons8
RENAME COLUMN surname TO description;

-- MODIFY COLUMN: Modifica el tipo de dato del atributo description en la tabla "persons8"
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

-- DROP COLUMN: Elimina el atributo description en la tabla "persons8"
ALTER TABLE persons8
DROP COLUMN description;

-- =============================================
-- File: 04_relationships.sql
-- =============================================

-- El campo user_id de la tabla "dni" es clave foránea de la clave primaria user_id de la tabla "users"
-- (Un usuario sólo puede tener un DNI. Un DNI sólo puede estar asociado a un usuario)
CREATE TABLE dni(
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE companies(
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);
ALTER TABLE users
ADD company_id int;

-- El campo company_id de la tabla "users" es clave foránea de la clave primaria company_id de la tabla "companies"
-- (Un empleado (usuario) sólo puede tener una empresa, pero una empresa puede tener muchos empleados (usuarios))
ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id)

CREATE TABLE languages(
	language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

-- El campo user_id y language_id de la tabla intermedia "users_languages" es clave foránea de las
-- claves primarias user_id de la tabla "users" y de language_id de la tabla "languages"
-- Un usuario puede conoces muchos lenguajes. Un lenguaje puede ser conocido por muchos usuarios.
CREATE TABLE users_languages(
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);

-- "dni" (Relación 1:1)
INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
INSERT INTO dni (dni_number) VALUES (44444444);

-- "companies" y "users"  (Relación 1:N)
INSERT INTO companies (name) VALUES ('MoureDev');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;

-- "languages" y "users_languages"  (Relación N:M)
INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('COBOL');

INSERT INTO users_languages (user_id, language_id) VALUES (1, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 5);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 5);

-- =============================================
-- File: 01_inner_join.sql
-- =============================================

-- Realiza un JOIN de manera incorrecta, ya que no existe un campo de relación
SELECT * FROM users
INNER JOIN dni;

-- Obtiene los datos de los usuarios que tienen un dni 
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene los datos de los usuarios que tienen un dni (JOIN es lo mismo que INNER JOIN)
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene el nombre y el dni de los usuarios que tienen un dni y los ordena por edad
SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

-- Obtiene los datos de los usuarios que tienen empresa
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

-- Obtiene los datos de las empresas que tienen usuarios
SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

-- Obtiene el nombre de las empresas junto al nombre de sus usuarios
SELECT companies.name, users.name FROM companies
JOIN users
ON companies.company_id = users.company_id;

-- Obtiene los nombres de usuarios junto a los lenguajes que conocen
SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id=users.user_id
JOIN languages ON users_languages.language_id=languages.language_id;

-- Obtiene los nombres de usuarios junto a los lenguajes que conocen (utilizando otro orden de relación entre tablas)
SELECT users.name, languages.name
FROM users
JOIN users_languages ON users.user_id=users_languages.user_id
JOIN languages ON users_languages.language_id=languages.language_id;

-- =============================================
-- File: 02_left_join.sql
-- =============================================

-- Obtiene los datos de todos los usuarios junto a su dni (lo tenga o no)
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene el nombre de todos los usuarios junto a su dni (lo tenga o no)
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene todos los dni junto al nombre de su usuario (lo tenga o no)
SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;

-- Obtiene el nombre de todos los usuarios junto a sus lenguajes (los tenga o no)
SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id=users_languages.user_id
LEFT JOIN languages ON users_languages.language_id=languages.language_id;

-- =============================================
-- File: 03_right_join.sql
-- =============================================

-- Obtiene todos los dni junto a su usuario (lo tenga o no)
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene todos los dni junto al nombre de su usuario (lo tenga o no)
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene el nombre de todos los usuarios junto a su dni (lo tenga o no)
SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

-- Obtiene el nombre de todos los lenguajes junto a sus usuarios (los tenga o no)
SELECT users.name, languages.name
FROM users
RIGHT JOIN users_languages ON users.user_id=users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id=languages.language_id;

-- =============================================
-- File: 04_union.sql
-- =============================================

-- UNION elimina duplicados

-- Obtiene todos los id de usuarios de las tablas dni y usuarios (exista o no relación)
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT users.user_id AS user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene todos los datos de las tablas dni y usuarios (exista o no relación)
SELECT *
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT *
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- UNION ALL mantiene duplicados

-- =============================================
-- File: 01_index.sql
-- =============================================

-- Crea un índice llamado "idx_name" en la tabla "users" asociado al campo "name"
CREATE INDEX idx_name ON users(name);

-- Crea un índice único llamado "idx_name" en la tabla "users" asociado al campo "name"
CREATE UNIQUE INDEX idx_name ON users(name);

-- Crea un índice llamado "idx_name_surname" en la tabla "users" asociado a los campos "name" y "surname"
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

-- Elimina el índice llamado "idx_name"
DROP INDEX idx_name ON users;

-- =============================================
-- File: 02_triggers.sql
-- =============================================

-- Crea una tabla de historial para usar en el ejemplo
CREATE TABLE `hello_mysql`.`email_history` (
`email_history_id` INT NOT NULL AUTO_INCREMENT,
`user_id` INT NOT NULL,
`email` VARCHAR(100) NULL,
PRIMARY KEY (`email_history_id`),
UNIQUE INDEX `email_history_id_UNIQUE` (`email_history_id` ASC) VISIBLE);

-- Crea un trigger llamado "tg_email" que guarda el email previo en la tabla "email_history" siempre
-- que se actualiza el campo "email" en la tabla "users"

-- DELIMITER es una directiva que sirve para cambiar el delimitador de instrucciones SQL, que por defecto es ;
-- Se utiliza cuando se define un bloque de código como un procedimiento donde se requieren múltiples 
-- instrucciones SQL terminadas con punto y coma dentro de un mismo bloque.
DELIMITER //
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
		VALUES (OLD.user_id, OLD.email);
	END IF;
END//

-- Actualiza el campo "email" del usuario 1 la tabla "users" para probar el trigger
UPDATE users SET email = 'mouredev@gmail.com' WHERE user_id = 1

-- Elimina el trigger llamado "tg_email"
DROP TRIGGER tg_email;

-- =============================================
-- File: 03_views.sql
-- =============================================

-- Crea unaa vista llamada "v_adult_users" con los nombres y edades de usuarios de la table "users"
-- que tienen una edad igual o mayor a 18 años.
CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;

SELECT * FROM v_adult_users;

-- Elimina la vista llamada "v_adult_users"
DROP VIEW v_adult_users;

-- =============================================
-- File: 04_stored_procedures.sql
-- =============================================

-- Crea un procedimiento almacenado llamado "p_all_users" que obtiene todos los datos de "users"
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

-- Invoca al procedimiento almacenado llamado "p_all_users"
CALL p_all_users;

-- Crea un procedimiento almacenado llamado "p_age_users" parametrizado para
-- obtener usuarios con edad variable
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//

-- Invoca al procedimiento almacenado llamado "p_age_users" con un parámetro de valor 30
CALL p_age_users(30);

-- Elimina el procedimiento almacenado llamado "p_age_users"
DROP PROCEDURE p_age_users;

-- =============================================
-- File: 05_transactions.sql
-- =============================================

-- Inicia una nueva transacción. Desde este punto, todas las modificaciones realizadas en la
-- base de datos son temporales y solo son visibles dentro de esta transacción
START TRANSACTION

-- Finaliza una transacción con éxito. Cuando se ejecuta, todos los cambios realizados en la
-- base de datos durante la transacción actual se hacen permanentes y visibles
COMMIT

-- Deshace las operaciones realizadas en una transacción, revirtiendo la base de datos
-- al estado en que se encontraba antes de iniciar la transacción
ROLLBACK

