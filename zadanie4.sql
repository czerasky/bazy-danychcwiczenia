SELECT SUM(iduczniowie) as liczba_uczniow FROM uczniowie

SELECT SUM(max_uczniow)as liczba_miejsc_w_szkole FROM klasy

SELECT DISTINCT poziom FROM lekcje 

SELECT * FROM uczniowie
INNER JOIN uczniowie_klasy ON iduczniowie_uczniowie=iduczniowie
WHERE idklasy_uczniowie="3";


SELECT * FROM nauczyciele 
RIGHT JOIN nauczyciele_lekcje ON idnauczyciele_lekcje=idnauczyciele
LEFT JOIN lekcje ON idlekcje=idlekcje_lekcje
WHERE  nazwa="polski";

SELECT * FROM plan_godzin 
RIGHT JOIN klasy_plan_godzin ON idplan_lekcji_plan=idplan_lekcji
LEFT JOIN klasy ON idlekcje_klasy=idklasy_plan
order BY start_godzina ASC

SELECT imie,nazwisko FROM nauczyciele
WHERE imie like 'e%' or nazwisko like '%z'
GROUP BY imie;

SELECT * FROM plan_godzin
WHERE start_godzina between '18:00:00' and '21:00:00';

SELECT * FROM klasy
INNER JOIN nauczyciele ON idnauczyciele=idnauczyciele_klasy
WHERE max_uczniow="12"

SELECT COUNT(max_uczniow),idklasy FROM klasy
INNER JOIN nauczyciele ON idnauczyciele=idnauczyciele_klasy
GROUP BY max_uczniow
HAVING COUNT(max_uczniow) < 10;

create view zapytanie1 AS SELECT SUM(iduczniowie) as liczba_uczniow FROM uczniowie;

create view zapytanie2 AS SELECT * FROM uczniowie
INNER JOIN uczniowie_klasy ON iduczniowie_uczniowie=iduczniowie
WHERE idklasy_uczniowie="3";

create view zapytanie3 AS SELECT DISTINCT poziom FROM lekcje 

create view zapytanie4 AS SELECT * FROM uczniowie
INNER JOIN uczniowie_klasy ON iduczniowie_uczniowie=iduczniowie
WHERE idklasy_uczniowie="3";

create view zapytanie5 AS SELECT * FROM nauczyciele 
RIGHT JOIN nauczyciele_lekcje ON idnauczyciele_lekcje=idnauczyciele
LEFT JOIN lekcje ON idlekcje=idlekcje_lekcje
WHERE  nazwa="polski";

create view zapytanie6 AS SELECT * FROM plan_godzin 
RIGHT JOIN klasy_plan_godzin ON idplan_lekcji_plan=idplan_lekcji
LEFT JOIN klasy ON idlekcje_klasy=idklasy_plan
order BY start_godzina ASC

create view zapytanie7 AS SELECT imie,nazwisko FROM nauczyciele
WHERE imie like 'e%' or nazwisko like '%z'
GROUP BY imie;

create view zapytanie8 AS SELECT * FROM plan_godzin
WHERE start_godzina between '18:00:00' and '21:00:00';

create view zapytanie9 AS SELECT * FROM klasy
INNER JOIN nauczyciele ON idnauczyciele=idnauczyciele_klasy
WHERE max_uczniow="12"

create view zapytanie10 AS SELECT COUNT(max_uczniow),idklasy FROM klasy
INNER JOIN nauczyciele ON idnauczyciele=idnauczyciele_klasy
GROUP BY max_uczniow
HAVING COUNT(max_uczniow) < 10;
