--TASK 1
SELECT DISTINCT COUNTRY FROM CLASSES
where NUMGUNS >= ALL (SELECT NUMGUNS FROM CLASSES)

--TASK 2
SELECT distinct CLASS FROM OUTCOMES
join ships
on OUTCOMES.SHIP = ships.NAME
where RESULT in (select result from OUTCOMES
                 where result = 'sunk')

--TASK 3                 
select name, ships.CLASS     from ships
join CLASSES
on CLASSes.CLASS = ships.CLASS
where bore in (select bore where bore = 16)


--TASK 4
select BATTLES.NAME from BATTLES
JOIN OUTCOMES
ON BATTLE = BATTLES.NAME
JOIN SHIPS
ON OUTCOMES.SHIP = SHIPS.NAME
where SHIPS.CLASS = (select SHIPS.CLASS from SHIPS
              where SHIPS.NAME = 'Kongo')

--TASK 5
select cl1.CLASS, NAME from CLASSES AS cl1
JOIN SHIPS
ON cl1.CLASS = SHIPS.CLASS
WHERE NUMGUNS >= ALL (SELECT NUMGUNS FROM CLASSES AS cl2
                      WHERE cl2.BORE = cl1.BORE)
ORDER BY cl1.CLASS