
--search on key
SELECT count( * )
FROM pilot_hobbies
WHERE hobbies ? 'sports';

