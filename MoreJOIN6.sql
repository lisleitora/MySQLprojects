/*Obtain the cast list for 'Casablanca'.
what is a cast list?
The cast list is the names of the actors who were in the movie.
Use movieid=11768, (or whatever value you got from the previous question)*/

SELECT name FROM casting
JOIN actor ON (actor.id = casting.actorid)
WHERE casting.movieid = 11768 AND actor.name LIKE "P%"
