
UPDATE pilots
SET schedule = schedule || 7
WHERE pilot_name = 'Boris';

UPDATE pilots
SET schedule = array_append( schedule, 6 )
WHERE pilot_name = 'Pavel';

UPDATE pilots
SET schedule = array_prepend( 1, schedule )
WHERE pilot_name = 'Pavel';

UPDATE pilots
SET schedule = array_remove( schedule, 5 )
WHERE pilot_name = 'Ivan'

UPDATE pilots
SET schedule[ 1 ] = 2, schedule[ 2 ] = 3
WHERE pilot_name = 'Petr';

UPDATE pilots
SET schedule[ 1:2 ] = ARRAY[ 2, 3 ]
WHERE pilot_name = 'Petr';

