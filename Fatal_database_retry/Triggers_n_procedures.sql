create or replace function create_scholar
    (pearson_id integer, name varchar(200), school_id integer, start_sch date, fin_sch date, birthday date, gend varchar(1))
returns integer as $$
    begin
        insert into scholar (scholar_id, scholar_name, scholar_school_id, start_school_date, stop_school_date, birth_date, gender)
        values (pearson_id, name, school_id, start_sch, fin_sch, birthday, gend);
        select count(scholar_id) from scholar
        where scholar_id = pearson_id;
    end;
$$ language sql;

create or replace procedure create_result
    (olymp_id integer, pearson_id integer, sch_class integer, olymp_class integer)
language sql
as $$
    insert into result (olympiad_id, scholar_id, real_class, written_class, result_points, result_degree_id)
    values (olymp_id, pearson_id, sch_class, olymp_class, null, null);
$$;

create or replace procedure change_result
    (olymp_id integer, pearson_id integer, points integer, degr_id integer)
language sql
as $$
    update result
    set result_points = points, result_degree_id = degr_id
    where (olympiad_id = olymp_id
        and scholar_id = pearson_id);
$$;


create procedure change_abs_winner(fix_ol_id integer, fix_class integer)
language sql
as $$
    update result
    set result_degree_id = 1
    where result_degree_id = 0;
    update result
    set result_degree_id = 0
    where (result_points =
          (select max(r1.result_points)
           from result r1
            where r1.olympiad_id = fix_ol_id and r1.written_class = fix_class)
        and result_degree_id = 1
        and olympiad_id = fix_ol_id
        and written_class = fix_class);
$$;

create trigger abs_winner_upd
    after insert on result
    when (result_points >
            (select max(result_points)
            from result r1
            where result.olympiad_id == r1.olympiad_id
                and result.written_class == r1.written_class)
        and result_degree_id <= 1)
    execute procedure change_abs_winner();