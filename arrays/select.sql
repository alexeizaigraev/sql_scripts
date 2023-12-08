
-- летают по средам
SELECT * FROM pilots
WHERE array_position( schedule, 3 ) IS NOT NULL;

--летают в понедельник и воскресенье
SELECT * FROM pilots
WHERE schedule @> '{ 1, 7 }'::integer[];

--или вторник или пятница
SELECT * FROM pilots
WHERE schedule && ARRAY[ 2, 5 ];

-- ни вторник, ин пятница
SELECT * FROM pilots
WHERE NOT ( schedule && ARRAY[ 2, 5 ] );

--развернуть массив в виде столбца таблицы. 
--функция unnest:
SELECT unnest( schedule ) AS days_of_week
FROM pilots
WHERE pilot_name = 'Ivan';

