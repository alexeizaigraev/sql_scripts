SELECT * FROM pilot_hobbies
WHERE hobbies @> '{ "sports": [ "футбол" ] }'::jsonb;

SELECT pilot_name, hobbies->'sports' AS sports
FROM pilot_hobbies
WHERE hobbies->'sports' @> '[ "футбол" ]'::jsonb;

