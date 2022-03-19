--all results from students while studying in 179 school
create or replace view school179 as
    select distinct r1.olympiad_id, r1.scholar_id, r1.real_class, r1.written_class,
                    r1.result_points, r1.result_degree_id,
                    o1.olympiad_name, o1.date_start, o1.date_end, o1.arrange_city_id
    from result r1 left join olympiad o1 on r1.olympiad_id = o1.olympiad_id
    where
        r1.scholar_id in (select s.scholar_id from scholar s
            where o1.date_start between s.start_school_date and s.stop_school_date
                    and s.scholar_school_id = 179);

--all results with one pearson
create or replace view AndreyChernov as
    select * from result r
    where r.scholar_id in
        (select s.scholar_id from scholar s
        where s.scholar_name = 'Andrey Chernov');

--all results with outlined names;
create or replace view namedResults as
    select s.scholar_name, r.olympiad_id from scholar s, result r
    where s.scholar_id = r.scholar_id;
;
select * from namedResults

create function tone(str varchar(200))
return varchar(200) as $$
    res_str = str.
    for (i = 3; i < str.length(); ++i){
        if (str[i] != ' '){
            str[]
        }
    }
$$ language c;

--making a toned names
create or replace view tonedNames as
    select s.scholar_name from scholar s;