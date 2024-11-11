/*List the film title and the leading actor for all of the films 'Julie Andrews' played in.*/

SELECT title, actor.name FROM movie
JOIN casting ON (movie.id = casting.movieid)
JOIN actor ON (actor.id = casting.actorid)
WHERE movieid IN (

  SELECT movieid FROM casting
JOIN actor ON (actor.id = casting.actorid)
  WHERE actor.name='Julie Andrews')

 AND ord = 1
