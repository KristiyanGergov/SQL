--TASK 1
select * from MOVIESTAR
where GENDER = 'F' AND NAME IN (SELECT NAME 
					FROM MOVIEEXEC
					WHERE NETWORTH > 10000000)

--TASK2
SELECT NAME FROM MOVIESTAR
WHERE NAME NOT IN (SELECT NAME FROM MOVIEEXEC)

--TASK 3
SELECT * FROM MOVIE
WHERE LENGTH > (SELECT LENGTH FROM MOVIE
				WHERE TITLE = 'Star Wars')

--TASK 4
SELECT MOVIE.TITLE, MOVIEEXEC.NAME FROM MOVIEEXEC
JOIN MOVIE
ON CERT# = MOVIE.PRODUCERC# 
WHERE NETWORTH > (SELECT NETWORTH FROM MOVIEEXEC
				  WHERE MOVIEEXEC.NAME = 'Merv Griffin')

