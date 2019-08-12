/* Create a table called users */
CREATE TABLE users(id int PRIMARY KEY, first_name text, last_name text, email text, city_id int);

/* Create few records in this table */
INSERT INTO users VALUES(1,'Ivan', 'Kuznetsov', 'ivan.kuznetsov@mail.ru', 1);
INSERT INTO users VALUES(2,'Nicolai', 'Grigoriev', 'n.grigoriev@gmail.com', 1);
INSERT INTO users VALUES(3,'Sergey', 'Kablukov', 's.kabl@mail.ru', 4);
INSERT INTO users VALUES(4,'Sergey', 'Buchko', 'ab@acme.com', 3);
INSERT INTO users VALUES(5,'Fedor', 'Travin', 'f.travin@gmail.com', 2);
/* INSERT INTO users VALUES(6,'Vasyan', 'Sidorov', 'smth@gmail.com', 2); */
/*COMMIT;*/


/* Посчитать кол-во пользователей с почтой на Gmail */

SELECT COUNT()
from users
where email LIKE '%@gmail.com';





/* Получить всех пользователей из России */

CREATE TABLE cities(id int PRIMARY KEY,	name text,	country_id int);	

INSERT INTO cities VALUES(1,	'Moscow',	1);
INSERT INTO cities VALUES(2,	'Paris',	2);
INSERT INTO cities VALUES(3,	'London',	3);
INSERT INTO cities VALUES(4,	'Saint Petersburg',	1);

CREATE TABLE countries	(id int PRIMARY KEY, name text);

INSERT INTO  countries VALUES(1,	'Russia');
INSERT INTO  countries VALUES(2,	'France');
INSERT INTO  countries VALUES(3,	'UK');

/*users.id, first_name, last_name, cities.name*/

SELECT users.id
FROM users
JOIN cities
    ON cities.id = users.city_id
JOIN countries
    ON countries.id = cities.country_id
WHERE countries.id=1;
