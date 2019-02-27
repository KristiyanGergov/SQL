--TASK 1
(select maker, speed from pc 
JOIN product
ON pc.model = product.model
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