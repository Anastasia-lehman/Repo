--№1. Выведите на экран номера групп и количество студентов, обучающихся в них

select n_group, count(n_group)
from students
group by n_group

--№2. Выведите на экран для каждой группы максимальный средний балл

select n_group, max(score)
from students
group by n_group

--№3. Подсчитать количество студентов с каждой фамилией

select surname, count(surname)
from students
group by surname

--№4. Подсчитать студентов, которые родились в каждом году (пока не актуально)

--№5. Для студентов каждого курса подсчитать средний балл

select substr(st.n_group::varchar, 1, 1) as number, avg(st.score) as score
from students st
group by substr(st.n_group::varchar, 1, 1)

--№6. Для студентов заданного курса вывести один номер групп с максимальным средним баллом

SELECT st.n_group, MAX(st.score)
FROM students st
GROUP BY st.n_group
LIMIT 1

--№7. Для каждой группы подсчитать средний балл, вывести на экран только те номера групп и их 
      средний балл, в которых он менее или равен 3.5. Отсортировать по от меньшего среднего балла к большему.

SELECT st.n_group, AVG(st.score) AS avg
FROM students st
GROUP BY st.n_group
HAVING AVG(st.score) <= 3.5
ORDER BY avg DESC

--№8. Для каждой группы в одном запросе вывести количество студентов, максимальный балл в группе, средний балл
      в группе, минимальный балл в группе

SELECT st.n_group, AVG(st.score) AS avg, MAX(st.score) AS max, MIN(st.score) AS min, COUNT(st.score) AS count
FROM students st
GROUP BY st.n_group
--№9. Вывести студента/ов, который/ые имеют наибольший балл в заданной группе
SELECT *
FROM students st
WHERE st.score= (SELECT MAX(st.score)
				 FROM students st)

--№10. Аналогично 9 заданию, но вывести в одном запросе для каждой группы студента с максимальным баллом.

Select st.*
From students st
INNER Join(
    Select st.n_group, max(st.score)
    From students st
    Group BY st.n_group) as t
	ON st.n_group=t.n_group AND st.score=t.max(st.score)