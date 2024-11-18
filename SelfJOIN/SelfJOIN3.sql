-- Give the id and the name for the stops on the '4' 'LRT' service.

SELECT id, name FROM stops
JOIN route ON (stops.id = route.stop)
WHERE num = '4' AND company = 'LRT'
