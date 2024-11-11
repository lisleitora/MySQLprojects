/*Obtain the cast list for the film 'Alien'*/

SELECT name FROM casting
JOIN actor ON (actor.id = casting.actorid)
JOIN movie ON (movie.id = casting.movieid)
WHERE movie.title = "Alien"
