drop table if exists thresholds cascade;
drop table if exists city cascade;
drop table if exists olympiad cascade;
drop table if exists scholar cascade;
drop table if exists result cascade;
drop table if exists school cascade;
drop table if exists districts cascade;
drop table if exists result_by_id cascade;

create table thresholds (
    olympiad_id             integer             not null,
    class_numb              integer             not null,
    threshold_1             integer             not null,
    threshold_2             integer             not null,
    threshold_3             integer             not null,
    threshold_4             integer             not null,
    max_points              integer
);

create table city (
    city_id                 integer             not null,
    city_name               varchar(200)        not null
    --olympiad_rank           integer             not null
);

create table olympiad (
    olympiad_id             integer             not null,
    olympiad_name           varchar(200),
    date_start              date                not null,
    date_end                date                not null,
    arrange_city_id         integer             not null
);

create table scholar (
    scholar_id              integer             not null,
    scholar_name            varchar(200)        not null,
    scholar_school_id       integer,
    start_school_date       date,
    stop_school_date        date,
    birth_date              date
);

--drop table if exists task cascade;
--create table task (
--    problem_id              integer             not null,
--    olympiad_id             integer             not null,
--    task_class              integer             not null,
--    task_number             integer             not null,
--    problem_text            varchar(350)
--);

create table school (
    school_id               integer             not null,
    school_name             varchar(200),
    district_id             integer
);

create table districts (
    district_id             integer             not null,
    district_name           varchar(200)
);

create table result_by_id (
    result_degree           integer             not null,
    result_name             varchar(100)         not null
);

create table result (
    olympiad_id             integer             not null,
    scholar_id              integer             not null,
    real_class              integer             not null,
    written_class           integer             not null,
    result_points           integer,
    result_degree_id        integer
);

--- altering tables: adding unique; primary keys; foreign keys;
alter table city add unique (city_id);
alter table districts add unique (district_id);
alter table olympiad add unique (olympiad_id);
alter table result_by_id add unique (result_degree);
alter table scholar add unique (scholar_id);
alter table school add unique (school_id);
--alter table task add unique (problem_id);
alter table thresholds add unique (olympiad_id, class_numb);
alter table result add unique (olympiad_id, scholar_id);


alter table city add primary key (city_id);
alter table districts add primary key (district_id);
alter table olympiad add primary key (olympiad_id);
alter table result_by_id add primary key (result_degree);
alter table scholar add primary key (scholar_id);
alter table school add primary key (school_id);
--alter table task add primary key (problem_id);
alter table thresholds add primary key (olympiad_id, class_numb);
alter table result add primary key (olympiad_id, scholar_id);


--alter table task add foreign key (olympiad_id) references olympiad(olympiad_id);
alter table olympiad add foreign key (arrange_city_id) references city(city_id);
alter table thresholds add foreign key (olympiad_id) references olympiad(olympiad_id);
alter table result add foreign key (result_degree_id) references result_by_id(result_degree);
alter table school add foreign key (district_id) references districts(district_id);
alter table scholar add foreign key (scholar_school_id) references school(school_id);
alter table result add foreign key (olympiad_id) references olympiad(olympiad_id);
alter table result add foreign key (scholar_id) references scholar(scholar_id);