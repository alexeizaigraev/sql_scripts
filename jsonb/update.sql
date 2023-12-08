
-- set for Boric hobbies = only хоккей
UPDATE pilot_hobbies
SET hobbies = hobbies || '{ "sports": [ "хоккей" ] }'
WHERE pilot_name = 'Boris';

-- upd on key 'sport' on array vakues on position 1
UPDATE pilot_hobbies
SET hobbies = jsonb_set( hobbies, '{ sports, 1 }', '"футбол"' )
WHERE pilot_name = 'Boris';

SELECT pilot_name, hobbies
FROM pilot_hobbies
WHERE pilot_name = 'Boris';