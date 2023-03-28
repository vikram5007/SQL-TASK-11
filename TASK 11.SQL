CREATE TABLE students4(
sid int,
sname varchar(25),
department varchar(5),
yearofcompletion int
)

alter table students2
alter column yearofcompletion int

insert into students4 values(1,'VIGNESH','BCA',2023)
insert into students4 values (2,'HARI','BCA',2022)
insert into students4 values (3,'VASANTH','BCOM',2021)
insert into students4 values (4,'VIKRAM','BCA',2023)
insert into students4 values (5,'VENKAT','BCOM',2022)
insert into students4 values (6,'ARUL','IT',2020)
insert into students4 values (7,'YAMINI','IT',2021)
insert into students4 values (8,'SELVA','BCOM',2022)
insert into students4 values (9,'DHANA','BA',2023)
insert into students4 values (10,'DIVYA','IT',2020)
insert into students4 values (11,'SHARON','BCA',2022)
insert into students4 values (12,'HARITHA','BA',2021)
insert into students4 values (13,'RANITHA','BCOM',2021)
insert into students4 values (15,'HARISHMITHA','BCA',2023)
insert into students4 values (16,'SIVA','BCA',2022)
insert into students4 values (17,'HEMANTH','BCA',2022)
insert into students4 values (18,'HARSHAN','BCA',2021)
insert into students4 values (19,'SRI KANTH','BCA',2021)
insert into students4 values (20,'DHARSAHN','BCA',2021)

------------ PIVOTING OF THE TABLE ----------------------------------
select yearofcompletion,BCA,BCOM,IT,BA FROM
(SELECT department,yearofcompletion,sid from students4) as tab1
pivot
(count(sid) for department in (BCA,BCOM,IT,BA)) as tab2
order by yearofcompletion;

SELECT * FROM students4

------------ PIVOTING AND UNPIVOTING OF THE TABLE ----------------------------------

select sid,department,yearofcompletion from(
select yearofcompletion,BCA,IT,BA,BCOM FROM 
(SELECT department,yearofcompletion,sid from students4) as tab1
pivot
(count(sid) for department in (BCA,IT,BA,BCOM)) as tab2
)as pivoted
unpivot
(
sid for department in (BCA,IT,BA,BCOM)
)AS unpivottable

-------------------------------------------------- END --------------------------------------------------------------
