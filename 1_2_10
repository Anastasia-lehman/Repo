--№1. Вывести всеми возможными способами имена и фамилии студентов, средний балл которых от 4 до 4.5

select st.name, st.surname
from students st
where st.score >= 4 and st.score <= 4.5

select st.name, st.surname
from students st
where not st.score < 4 and not st.score > 4.5

select st.name, st.surname
from students st
where st.score between 4 and 4.5

--№2. Познакомиться с функцией CAST. Вывести при помощи неё студентов заданного курса (использовать Like)

select st.name, st.surname
from students st
where st.n_group::varchar like '2%'

--№3. Вывести всех студентов, отсортировать по убыванию номера группы и имени от а до я

select st.name, st.surname, st.n_group
from students st
order by st.n_group desc, st.name

--№4. Вывести студентов, средний балл которых больше 4 и отсортировать по баллу от большего к меньшему

select st.name, st.surname, st.score
from students st
where st.score > 4
order by st.score desc

--№5. Вывести на экран название и риск футбола и хоккея

select hb.name, hb.risk
from hobbies hb
where hb.name = 'Футбол' or hb.name = 'Хоккей'

--№6. Вывести id хобби и id студента которые начали заниматься хобби между двумя заданными датами (выбрать самим) 
      и студенты должны до сих пор заниматься хобби

select sh.student_id, sh.hobby_id, sh.date_start, sh.date_finish
from students_hobbies sh
where (sh.date_start between '2018-01-01' and '2019-01-01') and sh.date_finish is null

--№7. Вывести студентов, средний балл которых больше 4.5 и отсортировать по баллу от большего к меньшему

select st.name, st.surname, st.score
from students st
where st.score > 4.5
order by st.score desc

--№8. Из запроса №7 вывести несколькими способами на экран только 5 студентов с максимальным баллом

SELECT name, surname, score
FROM students
WHERE score =
(SELECT max(score) FROM students)
limit 5

select st.name, st.surname, st.score
from students st
where st.score > 4.5
order by st.score desc
limit 5

--№9. Выведите хобби и с использованием условного оператора сделайте риск словами:
        >=8 - очень высокий
        >=6 & <8 - высокий
        >=4 & <8 - средний
        >=2 & <4 - низкий
        <2 - очень низкий

select name, case 
when risk>=8 then 'очень высокий'
when risk<8 and risk>=6 then 'высокий'
when risk<6 and risk>=4 then 'средний'
when risk<4 and risk>=2 then 'низкий'
when risk<2 then 'очень низкий'
end
from hobbies

--№10. Вывести 3 хобби с максимальным риском

select name
from hobbies
order by risk desc
limit 3