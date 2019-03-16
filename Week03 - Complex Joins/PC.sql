--TASK 1
select maker, product.model, product.type from product
LEFT JOIN PC
ON product.model = PC.model
LEFT JOIN laptop
ON product.model = laptop.model
left join printer
on product.model = printer.model
where laptop.model is null and printer.model is null and pc.model is null

--TASK 2
SELECT distinct p1.maker FROM product as p1
JOIN product AS p2
ON p1.maker = p2.maker
where p1.type = 'Laptop' and p2.type = 'Printer'

--TASK 3
select distinct l1.hd from laptop as l1
left join laptop as l2
on l1.hd = l2.hd
where l1.model != l2.model

--TASK 4
SELECT PC.model FROM PC
LEFT JOIN product 
ON PC.model = product.model
WHERE product.model IS NULL