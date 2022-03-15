create index on city(city_name);
create index on districts(district_name);
create index on olympiad(olympiad_id);
create index on result(result_points, result_degree_id);
create index on result_by_id(result_degree);
create index on scholar(scholar_name, scholar_id);
create index on school(school_id);
create index on thresholds(olympiad_id, class_numb);