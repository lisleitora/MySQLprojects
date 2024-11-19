-- Find the routes involving two buses that can go from Craiglockhart to Lochend.
-- Show the bus no. and company for the first bus, the name of the stop for the transfer,
-- and the bus no. and company for the second bus.

-- Hint
-- Self-join twice to find buses that visit Craiglockhart and Lochend, then join those on matching stops.


SELECT i.anum as num, i.acompany as company, s.name, i.bnum as num, i.bcompany as company FROM 

(SELECT ra.num anum, ra.company acompany, rb.num bnum, rb.company bcompany FROM
(SELECT * FROM route a WHERE stop='53') AS ra
JOIN
(SELECT * FROM route WHERE stop='149') AS rb) as i

JOIN route a ON (i.anum = a.num AND i.acompany = a.company)
JOIN route b ON (i.bnum = b.num AND i.bcompany = b.company AND a.stop = b.stop)
JOIN stops s ON (a.stop=s.id)
ORDER BY i.anum, s.name, i.bnum

