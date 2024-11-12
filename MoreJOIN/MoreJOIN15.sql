-- List all the people who have worked with 'Art Garfunkel'.

(SELECT actor.name FROM movie
JOIN casting ON (movie.id = casting.movieid)
JOIN actor ON (actor.id = casting.actorid)
WHERE movieid IN (
  SELECT movieid FROM casting
JOIN actor ON (actor.id = casting.actorid)
  WHERE actor.name='Art Garfunkel')
AND actor.name <> 'Art Garfunkel')
