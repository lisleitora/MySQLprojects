/*Obtain a list, in alphabetical order, of actors who've had at least 15 starring roles.*/

SELECT actor.name FROM
(SELECT actorid, COUNT(*) AS qt FROM casting
WHERE ord = 1
GROUP BY actorid) AS consulta
JOIN actor ON (actor.id = actorid)
WHERE qt > 14
ORDER BY name
