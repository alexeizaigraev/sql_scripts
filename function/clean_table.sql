
DROP FUNCTION IF EXISTS clean_table_int;
CREATE FUNCTION clean_table_int() RETURNS void AS '
    DELETE FROM table_int
        WHERE col1 < 2;
' LANGUAGE SQL;

SELECT clean_table_int();

select * from table_int;