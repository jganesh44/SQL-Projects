use etlclass;
select * from titanic;

-- Select all columns for all passengers in the Titanic dataset
select * from titanic;

-- Display the number of passengers in each class (1st, 2nd, 3rd).
select pclass,count(pclass) from titanic group by pclass order by pclass;

-- Find the number of male and female passengers.
select sex,count(sex) from titanic group by sex;

-- Display the names of passengers who survived.
select Name,Survived from titanic where Survived = 1;

--  Find the average age of passengers
select avg(age) from titanic;

-- List the names and ages of passengers who were younger than 18.
select name,age from titanic where age<18;

-- Display the number of passengers in each embarkation port (C, Q, S).
select embarked,count(embarked) from titanic group by embarked;

-- Find the highest fare paid by any passenger
select max(fare) from titanic;

--  List the average age of passengers for each class.
select pclass,avg(age) from titanic group by pclass order by pclass;

-- Display the passenger names and ages for those who survived and were in 1st class
select name,age,survived,pclass from titanic where survived = 1 and pclass=1;

-- Find the number of passengers who paid more than 50 for their ticket.
select count(fare) from titanic where fare>50;

-- List the names of passengers who did not survive and were in 3rd class
select name,survived,pclass from titanic where pclass=3 and survived=0;

-- Find the number of passengers with missing values in the "Age" column
select count(age) from titanic where age is null;

-- . Display the passenger names and ages for those who embarked at port 'S' and survived.
select name,age,embarked,survived from titanic where embarked='s' and survived=1;

-- Calculate the total number of passengers on board
select count(passengerid) from titanic;

-- List the average fare for each class
select pclass,avg(fare) from titanic group by pclass order by pclass;

-- Display the passenger names and ages for those with a known age and a fare greater than 100.
select name,age,fare from titanic where fare>100;

-- Find the percentage of passengers who survived.
select (count(survived)/(select count(survived) from titanic))*100 as survival_percentage from titanic where Survived=1;

-- List the names of passengers who were in 2nd class and had a fare less than 20.
select name,pclass,fare from titanic where fare<20 and pclass=2;

-- Display the passenger names and ages for those who did not survive and were in 1st class
select name,age,survived from titanic where survived = 0 and pclass=1;

-- Find the number of passengers for each combination of class and gender.
select pclass,sex,count(name) as combination from titanic group by pclass,sex order by pclass,sex;

--  List the names of passengers who survived and were in 3rd class with an age less than 20
select name,survived,pclass,age from titanic where pclass=3 and age<20 and survived=1;

-- Display the passenger names for those with the name starting with 'Mr.'
select name from titanic where name like '%Mr. _%';

-- 	Find the average age of male and female passengers.
select sex,avg(age) from titanic group by sex;

-- List the names of passengers who paid the highest fare.
select name,fare from titanic order by fare desc limit 0,10;

-- Find the number of passengers for each embarkation port and class
select embarked,count(passengerid) from titanic group by embarked;

-- Display the passenger names and ages for those who survived and paid more than 200 for their ticket.
select name,age,survived,fare from titanic where fare>200 and survived=1;

-- Find the average age of passengers who survived and those who did not
select survived,avg(age) from titanic group by survived;

--  List the names of passengers who were in 1st class and had an age greater than 50
select name,pclass,age from titanic where age>50 and pclass=1;

-- Display the passenger names for those with the name ending with 'sson'.
select name from titanic where name like '%sson';