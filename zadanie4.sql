SELECT SUM(iduczniowie) as liczba_uczniow FROM uczniowie
GROUP BY DESC;

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

