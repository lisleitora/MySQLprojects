/*List the films released in the year 1978 ordered by the number of actors in the cast, then by title.*/

SELECT  title, COUNT(casting.actorid) AS actors FROM movie
JOIN casting ON (movie.id = casting.movieid)
WHERE yr = 1978
GROUP BY title
ORDER BY actors DESC, title
