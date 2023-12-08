
CREATE TABLE pilots
(
pilot_name text,
schedule integer[]
);


INSERT INTO pilots
VALUES ( 'Ivan', '{ 1, 3, 5, 6, 7 }'::integer[] ),
( 'Petr', '{ 1, 2, 5, 7 }'::integer[] ),
( 'Pavel', '{ 2, 5 }'::integer[] ),
( 'Boris', '{ 3, 5, 6 }'::integer[] );

SELECT * FROM pilots;

