-- Contare quanti iscritti ci sono stati ogni anno (la data di iscrizione sulla tabella students è enrolment_date)
Select YEAR (enrolment_date) as academic_year,  COUNT(*) as students_enrolled
from students
group by YEAR (enrolment_date);

-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT *
FROM students s
inner join `degrees` d 
on s.degree_id = d.id
WHERE d.name = 'Corso di Laurea in Economia';

-- Selezionare tutti i corsi in cui insegna Fulvio Amato
SELECT t.name , t.surname , c.name as nome_corso
from courses c 
INNER JOIN  course_teacher ct 
on  ct.course_id =c.id
inner join teachers t  
on ct.teacher_id = t.id  
WHERE t.name ='Fulvio' and t.surname ='Amato';

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT *
from students s 
inner join `degrees` d 
on s.degree_id = d.id 
inner JOIN departments d2 
on d.department_id =d2.id 
ORDER BY s.surname ASC , s.name ASC;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento e mostrare nome dipartimento e numero di corsi
SELECT dep.name , COUNT(d.department_id)  as n_cdl_per_dipartimento 
FROM `degrees` d
INNER JOIN departments dep
ON d.department_id = dep.id 
GROUP BY dep.id;

/*
SELECT dep.name , d.department_id , c.degree_id, c.id 
FROM `degrees` d
INNER JOIN departments dep
ON d.department_id = dep.id 
INNER JOIN courses c 
ON c.degree_id = d.id
GROUP BY department_id , degree_id;


SELECT * FROM degrees d WHERE d.department_id IN
(SELECT  dep.id FROM departments d WHERE email LIKE '%scienze%') 

