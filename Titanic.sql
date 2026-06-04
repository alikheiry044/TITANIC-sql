use
titanic
--1--
--Number of Survivors--
select count(*) as NumberofLives
from titanicTable
where Survived=1
--2--
--Number of Deceased--
select count(*)as NumberofDied
from titanicTable
where Survived=0
--3--
--Numberofpepole--
select count(*) as Numberofpepole,Sex
from titanicTable
group by Sex

--4--
--Grouping by Age--
select *,case when Age<30 then 'G1'
			when Age<50 then 'G2'
			when Age>=50 then 'G3'
			end as grouping
from titanicTable


--5--
--Survivors by Class--
select pclass ,count(*) as SurviClass
from titanicTable
where Survived=1
group by Pclass
order by Pclass

--6--
--Deceased by Class--
select pclass,count(*) as DeceasedClass
from titanicTable
where Survived=0
group by Pclass
order by Pclass
--7--
--Survivors by SEX--
select Sex,count(*) as SurvivorsBYsex
from titanicTable
WHERE Survived = 1
group by Sex

--8--
select Sex,count(*) as DeceasedBYsex
from titanicTable
Where Survived = 0
group by Sex

--9--
--avregeAgeBYclass--
select avg(age) as avregeAge,Pclass
from titanicTable
group by Pclass
order by Pclass


--10--
--Survivors by age group--
SELECT 
    CASE 
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age >= 18 AND Age < 40 THEN '18-40'
        WHEN Age >= 40 AND Age < 60 THEN '40-60'
        ELSE '60+' 
    END AS AgeGroup,
    COUNT(*) AS SurvivorsByAgeGroup
FROM titanicTable
WHERE Survived = 1
GROUP BY 
    CASE 
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age >= 18 AND Age < 40 THEN '18-40'
        WHEN Age >= 40 AND Age < 60 THEN '40-60'
        ELSE '60+' 
    END
ORDER BY AgeGroup;

--11--
--Number of survivors by social class--
SELECT Embarked, COUNT(*) AS SurvivorsByEmbarked
from titanicTable
where Survived=1
group by Embarked
order by Embarked
--12--
--Number of Deceased by social class--
select Embarked,count(*) as DeceasedEmbark
from titanicTable
where Survived=0
group by Embarked
order by Embarked

--13--
--FareBYclass--
select avg(Fare) as FareBYclass
from titanicTable
group by Pclass
order by Pclass

--14--
--SurvivorsByFamily--
SELECT SibSp, Parch, COUNT(*) AS SurvivorsByFamily
FROM titanicTable
WHERE Survived = 1
GROUP BY SibSp, Parch
ORDER BY SibSp, Parch;


--15--
SELECT Pclass, Sex, 
       COUNT(CASE WHEN Survived = 1 THEN 1 END) AS Survivors,
       COUNT(CASE WHEN Survived = 0 THEN 1 END) AS Deceased
FROM titanicTable
GROUP BY Pclass, Sex
ORDER BY Pclass, Sex;

























	





