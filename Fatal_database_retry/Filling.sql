truncate table city cascade;
truncate table districts cascade;
truncate table olympiad cascade;
truncate table result cascade;
truncate table result_by_id cascade;
truncate table scholar cascade;
truncate table school cascade;
truncate table thresholds cascade;

--filling cities, especially cities of 4-th vseros
insert into city (city_id, city_name)
values
    (1, 'Moscow'),
    (2, 'Kazan'),
    (3, 'St. Petersburg'),
    (4, 'Kaliningrad'),
    (5, 'Ekaterinburg'),
    (6, 'Perm')
;

--filling olympiads with vseros
insert into olympiad (
    olympiad_id, olympiad_name, date_start, date_end, arrange_city_id
)
values
    (5840143, 'vseros2014-2015-3', '2015-02-02', '2015-02-03', 1),
    (5840144, 'vseros2014-2015-4', '2015-04-23', '2015-04-29', 2),
    (5840153, 'vseros2015-2016-3', '2016-02-05', '2016-02-06', 1),
    (5840154, 'vseros2015-2016-4', '2016-04-21', '2016-04-29', 3),
    (5840162, 'vseros2016-2017-2', '2016-12-04', '2016-12-04', 1),
    (5840163, 'vseros2016-2017-3', '2017-01-30', '2017-01-31', 1),
    (5840164, 'vseros2016-2017-4', '2017-04-24', '2017-04-30', 4),
    (5840172, 'vseros2017-2018-2', '2017-12-03', '2017-12-03', 1),
    (5840173, 'vseros2017-2018-3', '2018-01-31', '2017-02-01', 1),
    (5840174, 'vseros2017-2018-4', '2018-04-23', '2017-04-28', 5),
    (5840182, 'vseros2018-2019-2', '2018-12-02', '2018-12-02', 1),
    (5840183, 'vseros2018-2019-3', '2019-02-01', '2019-02-02', 1),
    (5840184, 'vseros2018-2019-4', '2019-04-21', '2019-04-27', 6)
;
--filling olympiads with high_probe and citiestourn
insert into olympiad (
    olympiad_id, olympiad_name, date_start, date_end, arrange_city_id
)
values
    (5847171, 'high_probe-2017', '2017-02-03', '2017-02-03', 1),
    (5847181, 'high_probe-2018', '2018-02-08', '2018-02-08', 1),
    (58331711, 'turgor-2017-autumn-easytour', '2017-10-08', '2017-10-08', 1),
    (58331712, 'turgor-2017-autumn-hardtour', '2017-10-22', '2017-10-22', 1),
    (58331721, 'turgor-2017-spring-easytour', '2018-02-25', '2018-02-25', 1),
    (58331722, 'turgor-2017-spring-hardtour', '2018-03-11', '2018-03-11', 1),
    (58331811, 'turgor-2018-autumn-easytour', '2018-10-07', '2017-10-07', 1),
    (58331812, 'turgor-2018-autumn-hardtour', '2018-10-21', '2017-10-21', 1),
    (58331821, 'turgor-2018-spring-easytour', '2019-03-03', '2019-03-03', 1),
    (58331822, 'turgor-2018-spring-hardtour', '2019-03-17', '2019-03-17', 1)
;

--filling districts
insert into districts (district_id, district_name)
values
    (1, 'a'),
    (2, 'b'),
    (3, 'c'),
    (4, 'd'),
    (5, 'e'),
    (6, 'f'),
    (7, 'g'),
    (8, 'h')
;

--filling school
insert into school (school_id, school_name, district_id)
values
    (179, '179 school', 1),
    (57, '57 school', 2),
    (1514, '1514 school', 3),
    (2, '2-nd school lyceum', 3),
    (170, 'hse lyceum', 4),
    (1543, '1543 school', 6),
    (1, 'SSSC MSU', 1),
    (1534, '1534 school', 7),
    (1568, '1568 school of Pablo Neruda', 8),
    (1580, '1580 school of Baumana', 5)
;




--filling scholar without changing school
insert into scholar (
    scholar_id, scholar_name, scholar_school_id, start_school_date, stop_school_date, birth_date
)
values
    (1, 'Habutdinov Arslan', 1543, '2005-09-01', '9999-12-31', '1998-03-15'),
    (2, 'Nikolay Terekhov', 57, '2006-09-01', '9999-12-31', '1999-10-20'),
    (3, 'Denis Titov', 170, '2006-09-01', '9999-12-31', '1999-07-31'),
    (4, 'Ekaterina Ushina', 1580, '2006-09-01', '9999-12-31', '1990-08-20'),
    (5, 'Iskander Sagitov', 57, '2007-09-01', '9999-12-31', '2000-12-10'),
    (6, 'Aleksandr Tolmachev', 1568, '2007-09-01', '9999-12-31', '2000-04-24'),
    (7, 'Stepan Vahrushev', 57, '2007-09-01', '9999-12-31', '2000-05-18'),
    (8, 'Adel Halilov', 2, '2007-09-01', '9999-12-31', '2000-08-29'),
    (9, 'Ulian Gilasev', 2, '2007-09-01', '9999-12-31', '2000-04-07'),
    (10, 'Mikhail Nikolaev', 1543, '2007-09-01', '9999-12-31', '2000-10-05'),
    (11, 'Andrey Chernov', 170, '2017-09-01', '9999-12-31', '2000-06-14'),
    (12, 'Maksim Lavrik-Karmasin', 179, '2007-09-01', '9999-12-31', '2000-10-02'),
    (13, 'Aidar Valiev', 1580, '2007-09-01', '9999-12-31', '2000-01-04'),
    (14, 'Tikhomir Dudnikov', 1514, '2007-09-01', '9999-12-31', '2000-10-24'),
    (15, 'Anna Shipil', 179, '2007-09-01', '9999-12-31', '2000-08-12'),
    (16, 'Polina Barabanshikova', 179, '2007-09-01', '9999-12-31', '2000-05-22'),
    (17, 'Dmitry Protasov', 1514, '2008-09-01', '9999-12-31', '2001-11-24'),
    (18, 'Georgy Sokolov', 1, '2008-09-01', '9999-12-31', '2001-02-17'),
    (19, 'Vladislav Sevec', 1568, '2008-09-01', '9999-12-31', '2001-04-12'),
    (20, 'Roman Agureev', 170, '2008-09-01', '9999-12-31', '2001-11-14'),
    (21, 'Alexiy Saplev', 1534, '2008-09-01', '9999-12-31', '2001-08-20'),
    (22, 'Alexandr Nikolaev', 1534, '2009-09-01', '9999-12-31', '2002-05-01'),
    (23, 'Grigory Leleitner', 1, '2009-09-01', '9999-12-31', '2002-02-26')
;

alter table scholar add gender varchar(1);

update scholar
    set gender = 'f'
where scholar_id in (4, 15, 16);

update scholar
    set gender = 'm'
where scholar_id not in (4, 15, 16);


--filling scholar with school changers
insert into scholar (
    scholar_id, scholar_name, scholar_school_id, start_school_date, stop_school_date, birth_date, gender
)
values
    (24, 'Andrey Chernov', 179, '2007-09-01', '2017-07-01', '2000-06-14', 'm')
;

insert into result_by_id (result_degree, result_name)
values
    (0, 'Absolute winner'),
    (1, 'Winner'),
    (2, 'Second grade medalist'),
    (3, 'Third grade medalist'),
    (4, 'Commendable sertificate'),
    (5, 'Special prize'),
    (100, 'Participant')
;

insert into thresholds (olympiad_id, class_numb, threshold_1, threshold_2, threshold_3, threshold_4, max_points)
values
    (5840143, 9, 45, 24, 24, 24, 56),
    (5840143, 10, 46, 26, 26, 26, 56),
    (5840143, 11, 46, 21, 21, 21, 56),
    (5840144, 9, 45, 24, 24, 22, 56),
    (5840144, 10, 48, 26, 26, 25, 56),
    (5840144, 11, 46, 21, 21, 19, 56),

    (5840153, 9, 45, 24, 24, 24, 56),
    (5840153, 10, 46, 26, 26, 26, 56),
    (5840153, 11, 46, 21, 21, 21, 56),
    (5840154, 9, 45, 28, 28, 23, 56),
    (5840154, 10, 48, 32, 32, 25, 56),
    (5840154, 11, 46, 28, 28, 18, 56),

    (5840162, 9, 19, 11, 11, 11, 24),
    (5840162, 10, 19, 11, 11, 11, 24),
    (5840162, 11, 23, 14, 14, 14, 24),
    (5840163, 9, 52, 30, 30, 30, 56),
    (5840163, 10, 49, 27, 27, 27, 56),
    (5840163, 11, 47, 24, 24, 24, 56),
    (5840164, 9, 47, 32, 32, 29, 56),
    (5840164, 10, 47, 28, 28, 26, 56),
    (5840164, 11, 46, 28, 28, 18, 56),

    (5840172, 9, 23, 16, 16, 16, 24),
    (5840172, 10, 23, 16, 16, 16, 24),
    (5840172, 11, 23, 15, 15, 15, 24),
    (5840173, 9, 56, 31, 31, 31, 70),
    (5840173, 10, 59, 40, 40, 40, 70),
    (5840173, 11, 54, 33, 33, 33, 70),
    (5840174, 9, 53, 39, 39, 32, 56),
    (5840174, 10, 48, 28, 28, 26, 56),
    (5840174, 11, 45, 31, 31, 29, 56),

    (5840182, 9, 19, 12, 12, 12, 24),
    (5840182, 10, 19, 13, 13, 13, 24),
    (5840182, 11, 19, 13, 13, 13, 24),
    (5840183, 9, 60, 35, 35, 35, 70),
    (5840183, 10, 60, 35, 35, 35, 70),
    (5840183, 11, 60, 35, 35, 35, 70),
    (5840184, 9, 49, 31, 31, 26, 56),
    (5840184, 10, 48, 36, 36, 33, 56),
    (5840184, 11, 43, 30, 30, 28, 56)
;



--filling results
insert into result (olympiad_id, scholar_id, real_class, written_class, result_points, result_degree_id)
values
    (5840143, 1, 10, 10, 43, 2),
    (5840144, 1, 10, 10, 47, 2),
    (5840153, 1, 11, 11, 47, 1),
    (5840154, 1, 11, 11, 50, 1),

    (5840153, 2, 9, 10, 27, 2),
    (5840154, 2, 9, 10, 26, 4),
    (5840163, 2, 11, 11, 35, 2),
    (5840164, 2, 11, 11, 30, 2),

    (5840163, 3, 10, 11, 45, 2),
    (5840164, 3, 10, 11, 47, 1),

    (5840164, 4, 11, 11, 55, 1),

    (5840163, 24, 9, 9, 35, 2),
    (5840164, 24, 9, 9, 15, 100),
    (5840174, 11, 10, 10, 29, 2),
    (5840183, 11, 11, 11, 40, 2),
    (5840184, 11, 11, 11, 49, 1)
;