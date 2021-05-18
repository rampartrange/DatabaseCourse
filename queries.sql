/*
Вывести все постановки и их даты в театре Артхаус 18+
 */
SELECT
p.name AS name, p.day_dt as day, p.time as time
FROM
theatre AS t
INNER JOIN play p
ON t.id = p.theatre_id
WHERE t.name = 'Артхаус 18+';

/*
 Вывести количество ролей в каждой постановке
 */

SELECT
p.name AS name, count(pxr.role_id) as role_count
FROM
play AS p
INNER JOIN play_x_role pxr
ON p.id = pxr.play_id
GROUP BY p.name;

/*
 Вывести имена режиссеров и название их постановок
 */

SELECT
first_nm, second_nm, name
FROM
director as d
INNER JOIN play p
ON d.id = p.director_id;

/*
 Количество актеров, работающих в каждом из театров
 */

SELECT
t.name as theatre_name, count(axr.actor_id) AS actors_count
FROM
theatre AS t
INNER JOIN play p
ON t.id = p.theatre_id
INNER JOIN play_x_role pxr
ON p.id = pxr.play_id
INNER JOIN role r
ON pxr.role_id = r.id
INNER JOIN actor_x_role axr
ON r.id = axr.role_id
GROUP BY t.id;

/*
 Вывести имена и фамилии актеров, которые могли играть в каждом из залов
 */

 SELECT
room.name as name, first_nm, second_nm
FROM
room
INNER JOIN play p
ON play_id = p.theatre_id
INNER JOIN play_x_role pxr
ON p.id = pxr.play_id
INNER JOIN role r
ON pxr.role_id = r.id
INNER JOIN actor_x_role axr
ON r.id = axr.role_id
INNER JOIN actor a on a.id = axr.actor_id;


------CRUD------
--------1--------
insert into actor
values (11, 'Богдан', 'Чомов');

SELECT
*
FROM
actor;

UPDATE actor
SET second_nm = 'Богданов'
WHERE id = 11;

SELECT
*
FROM
actor;

DELETE FROM actor
where id = 11;

--------2--------

insert into theatre
values (6,' Новейший театр');

SELECT
*
FROM
theatre;

UPDATE theatre
SET name = 'Новейший театр (закрыт на реставрацию)'
WHERE id = 6;

SELECT
*
FROM
theatre;

DELETE FROM theatre
where id = 6;