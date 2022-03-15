select count(scholar_id), scholar_school_id from scholar
where stop_school_date = ('9999-12-31')
group by scholar_school_id
order by scholar_school_id;

