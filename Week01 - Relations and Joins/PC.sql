--TASK 1
(select maker, speed from laptop 
JOIN product
ON laptop.model = product.model
where hd >= 9)


--TASK 2
(SELECT product.model, price FROM product
JOIN pc
ON pc.model = product.model
where maker = 'B')

UNION

(SELECT product.model, price FROM product
JOIN printer
ON printer.model = product.model
where maker = 'B')

UNION

(SELECT product.model, price FROM product
JOIN laptop
ON laptop.model = product.model
where maker = 'B')


--TASK 3
(SELECT maker FROM product
where product.type = 'Laptop')

except

(SELECT maker FROM product
where product.type = 'pc')


--TASK 4
(SELECT distinct pc1.hd FROM pc as pc1, pc as pc2
WHERE pc1.code != pc2.code AND pc1.hd = pc2.hd)--TASK 1
(select maker, speed from laptop 
JOIN product
ON laptop.model = product.model
where hd >= 9)

--TASK 5
SELECT pc1.model, pc2.model FROM pc as pc1, pc as pc2
where pc1.model < pc2.model and pc1.model != pc2.model and pc1.ram = pc2.ram and pc1.speed = pc2.speed

--TASK 6
select distinct maker from pc as pc1
join product
on pc1.model = product.model
join pc as pc2
on pc2.model = product.model
where pc1.code != pc2.code and pc1.speed > 400 and pc2.speed > 400 and [type] = 'PC'
