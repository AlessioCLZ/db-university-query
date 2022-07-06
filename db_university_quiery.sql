-- Selezionare il dipartimento il cui capo è Bernardo Sanna
SELECT *  
from departments
WHERE head_of_department ='Bernardo Sanna';

-- Selezionare tutti i corsi di laurea magistrale
SELECT *
from degrees
WHERE `level`= 'magistrale';

-- Selezionare tutti i corsi che valgono più di 10 crediti
SELECT *
from courses
WHERE cfu > 10;

-- Selezionare tutti gli insegnanti che non hanno il numero di telefono
SELECT *
from teachers
where phone IS NULL;

-- Selezionare tutti gli studenti che hanno più di 30 anni
select *
from students
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30;

-- Selezionare tutti gli studenti che hanno un indirizzo email gmail o yahoo
select *
from students
WHERE email LIKE '%gmail%' or email LIKE '%yahoo%';

-- Selezionare tutti gli esami che si sono svolti a luglio 2020
select *
from exams
where MONTH (`date`) = 7;


