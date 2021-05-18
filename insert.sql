------Theatre------
insert into theatre
values (1, 'Крученный Бублик', 'Чистые пруды');
insert into theatre
values (2, 'Артхаус 18+', 'Тимирязевская');
insert into theatre
values (3, 'Патриотический театр', 'Лубянка');
insert into theatre
values (4, 'Детский театр', 'Китай-город');
insert into theatre
values (5, 'Cчастливое детство', 'Бабушкинская');

select *
from theatre;


------Director------
insert into director
values (1, 'Анатолий', 'Шмель');
insert into director
values (2, 'Биба', 'Путин');
insert into director
values (3, 'Михаил', 'Круг');
insert into director
values (4, 'Вова', 'Подлокотник');
insert into director
values (5, 'Октябрина', 'Тракторович');
insert into director
values (6, 'Алишер', 'Моргенштерн');
insert into director
values (7, 'Зинаида', 'Потрохович');

select *
from director;

------Theatre_x_Director------
insert into Theatre_x_Director
values (1, 1);
insert into Theatre_x_Director
values (2, 1);
insert into Theatre_x_Director
values (2, 3);
insert into Theatre_x_Director
values (3, 2);
insert into Theatre_x_Director
values (5, 7);
insert into Theatre_x_Director
values (2, 5);
insert into Theatre_x_Director
values (4, 6);
insert into Theatre_x_Director
values (4, 4);

select *
from director;

------Play------
insert into play
values (1, 1, 1, 'Повиновение и подчинение', 360, '2021-01-01', '16:00');
insert into play
values (2, 3, 2, 'Любовь к Родине', 180, '2021-06-12', '12:00');
insert into play
values (3, 5, 7, 'Странный дядя', 10, '2021-06-01', '9:00');
insert into play
values (4, 2, 5, 'Любовь и голуби', 60, '2021-03-08', '19:00');
insert into play
values (5, 4, 6, 'Вихрь войны', 120, '2021-05-09', '18:00');
insert into play
values (6, 4, 4, 'Истории про зону', 720, '2021-06-01', '9:00');

select *
from play;

------Actor------
insert into actor
values (1, 'Виктор', 'Дробышкин');
insert into actor
values (2, 'Алексей', 'Попов');
insert into actor
values (3, 'Михаил', 'Васильев');
insert into actor
values (4, 'Василий', 'Петров');
insert into actor
values (5, 'Андрей', 'Николаев');
insert into actor
values (6, 'Александр', 'Пронякин');
insert into actor
values (7, 'Артем', 'Колышкин');
insert into actor
values (8, 'Константин', 'Ватрушка');
insert into actor
values (9, 'Генадий', 'Коротышкин');
insert into actor
values (10, 'Вальдемар', 'Питун');

select *
from actor;

------Role------
insert into role
values (1, 'Муму');
insert into role
values (2, 'Вертолет');
insert into role
values (3, 'Вертухай');
insert into role
values (4, 'Буратино');
insert into role
values (5, 'Отчим');
insert into role
values (6, 'Сводный брат');
insert into role
values (7, 'Дизайнер стиральных машин');
insert into role
values (8, 'Вовчик');
insert into role
values (9, 'Голубь');
insert into role
values (10, 'Дырявая тарелка');
insert into role
values (11, 'Барак Обама');
insert into role
values (12, 'Адвокат');
insert into role
values (13, 'Петух');

select *
from role;

------Actor_x_Role------
insert into actor_x_role
values (1, 2);
insert into actor_x_role
values (1, 12);
insert into actor_x_role
values (2, 3);
insert into actor_x_role
values (3, 4);
insert into actor_x_role
values (4, 5);
insert into actor_x_role
values (5, 6);
insert into actor_x_role
values (7, 8);
insert into actor_x_role
values (8, 9);
insert into actor_x_role
values (9, 10);
insert into actor_x_role
values (10, 11);
insert into actor_x_role
values (10, 1);
insert into actor_x_role
values (7, 13);
insert into actor_x_role
values (7, 7);

select *
from actor_x_role;

------Play_x_Role------
insert into play_x_role
values (1, 1);
insert into play_x_role
values (1, 7);
insert into play_x_role
values (2, 11);
insert into play_x_role
values (3, 8);
insert into play_x_role
values (3, 12);
insert into play_x_role
values (3, 5);
insert into play_x_role
values (3, 4);
insert into play_x_role
values (4, 9);
insert into play_x_role
values (4, 6);
insert into play_x_role
values (5, 2);
insert into play_x_role
values (6, 3);
insert into play_x_role
values (6, 10);
insert into play_x_role
values (6, 13);

select *
from play_x_role;


------Theatre_x_Actor------
insert into theatre_x_actor
values (1, 10);
insert into theatre_x_actor
values (1, 7);
insert into theatre_x_actor
values (3, 10);
insert into theatre_x_actor
values (5, 7);
insert into theatre_x_actor
values (5, 1);
insert into theatre_x_actor
values (5, 4);
insert into theatre_x_actor
values (5, 3);
insert into theatre_x_actor
values (2, 8);
insert into theatre_x_actor
values (2, 5);
insert into theatre_x_actor
values (4, 1);
insert into theatre_x_actor
values (4, 2);
insert into theatre_x_actor
values (4, 9);
insert into theatre_x_actor
values (4, 7);

select *
from theatre_x_actor;

------Room------
insert into room
values (1, 1, 1, 'Большой зал');
insert into room
values (2, 3, 2, 'Малый зал');
insert into room
values (3, 5, 3, 'Странный зал');
insert into room
values (4, 2, 4, 'Голубинный зал');
insert into room
values (5, 4, 5, 'Воинственный зал');
insert into room
values (6, 4, 6, 'Тюремный зал');

select *
from room;