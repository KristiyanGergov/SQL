--TASK 1

(select * from STARSIN 
JOIN MOVIESTAR on  STARSIN.STARNAME = MOVIESTAR.NAME
WHERE GENDER = 'M' AND MOVIETITLE = 'The Usual Suspects')

(select STARNAME from MOVIE
JOIN STARSIN ON
MOVIE.TITLE = STARSIN.MOVIETITLE
WHERE MOVIEYEAR = 1995 AND STUDIONAME = 'MGM')

(SELECT DISTINCT NAME FROM MOVIEEXEC
JOIN MOVIE ON
MOVIEEXEC.CERT# = MOVIE.PRODUCERC#
WHERE STUDIONAME = 'MGM')

(SELECT m2.TITLE FROM MOVIE AS m1, MOVIE as m2
WHERE m1.TITLE = 'Star Wars' AND m1.LENGTH < m2.LENGTH)

(SELECT m2.NAME FROM MOVIEEXEC AS m1, MOVIEEXEC AS m2
WHERE m1.NAME = 'Stephen Spielberg' and m1.NETWORTH < m2.NETWORTH)

(SELECT TITLE FROM MOVIEEXEC AS m1, MOVIEEXEC AS m2
JOIN MOVIE
ON m2.CERT# = MOVIE.PRODUCERC#
WHERE m1.NAME = 'Stephen Spielberg' and m1.NETWORTH < m2.NETWORTH)



--TASK 2