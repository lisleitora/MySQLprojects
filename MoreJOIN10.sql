/*List the films together with the leading star for all 1962 films.*/

SELECT title, actor.name FROM movie
JOIN casting ON (movie.id = casting.movieid)
JOIN actor ON (actor.id = casting.actorid)
WHERE yr = 1962 AND ord = 1
