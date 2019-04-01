--TASK 1
select distinct name from ships
join OUTCOMES 
on name = ship
where name like 'C%' or name like 'K%'

--TASK 2
select distinct name, COUNTRY from ships
left join OUTCOMES 
on name = ship
join CLASSES
on CLASSES.CLASS = ships.CLASS
where result != 'sunk' or result is null


--task 3
SELECT * FROM CLASSES
left JOIN SHIPS
ON CLASSES.CLASS = SHIPS.CLASS
join OUTCOMES
on ships.NAME is null or OUTCOMES.SHIP = SHIPS.NAME
WHERE RESULT = 'sunk'