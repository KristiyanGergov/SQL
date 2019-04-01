--TASK 1
select convert(decimal(6,2), avg(speed))
from pc

--TASK 2
SELECT maker, avg(screen) AS AvgSpeed FROM LAPTOP
JOIN product
ON laptop.model = product.model
group by maker

--TASK 3
select avg(speed) 
from laptop
where price > 1000

--TASK 4
SELECT AVG(PRICE) 
FROM PC
JOIN PRODUCT
ON PC.model = product.model
WHERE maker = 'A'

--TASK 5
SELECT AVG(P.PRICE) 

FROM (SELECT PRICE FROM PC
JOIN PRODUCT 
ON PC.model = product.model
WHERE MAKER = 'B'

UNION ALL

SELECT PRICE FROM laptop
JOIN product
ON laptop.model = product.model
WHERE MAKER = 'B') AS P


--TASK 6
select speed, avg(price) from pc
group by speed

--TASK 7
select maker, count(maker) from product
join pc 
on product.model = pc.model
group by maker
having count(maker) >= 3


--TASK 8
SELECT MAX(PRICE) AS MAXPRICE, MAKER FROM product
JOIN PC
ON PC.model = product.model
GROUP BY MAKER
HAVING MAX(PRICE) >= ALL (SELECT MAX(PRICE) FROM product
							JOIN PC
							ON PC.model = product.model
							GROUP BY MAKER)

