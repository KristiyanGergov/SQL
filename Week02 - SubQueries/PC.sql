--TASK 1
select maker from product
where product.model in (select model from pc
						where speed > 500)

--TASK 2
SELECT code, model, price FROM printer
WHERE price >= ALL (SELECT PRICE FROM printer)

--TASK 3
SELECT * FROM laptop
WHERE SPEED < ALL (SELECT SPEED FROM PC)


--TASK 4
select model, price from
(SELECT model, price FROM PC
UNION
SELECT model, price FROM laptop
UNION
SELECT MODEL, price FROM printer) as products
WHERE price >= ALL (SELECT price FROM PC
					UNION
					SELECT price FROM laptop
					UNION
					SELECT price FROM printer)

--TASK 5
SELECT maker FROM printer
join product
on printer.model = product.model
where price <= ALL (select price from printer
					where color = 'y') and color = 'y'

--TASK 6
SELECT MAKER FROM PC AS PC1
JOIN product
ON product.model = pc1.model
WHERE PC1.RAM <= ALL (SELECT RAM FROM PC) AND
	  PC1.speed >= ALL (
					SELECT PC3.SPEED FROM PC AS PC3
					JOIN product
					ON product.model = pc1.model
					WHERE PC3.RAM <= ALL (SELECT RAM FROM PC))

