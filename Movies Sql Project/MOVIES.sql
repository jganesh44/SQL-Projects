use etlclass;
select * from movies_sql;

-- 1 Retrieve the names of all the Bollywood movies which are of drama genre in the dataset
select Movie_Name from movies_sql where Genre = 'drama';

-- 2 Retrieve the names of all the Bollywood movies of Aamir Khan in the dataset.
select Movie_Name from movies_sql where Lead_Star = 'Aamir Khan';

-- 3 .Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the datase
select Movie_Name from movies_sql where Director = 'Ram Gopal Verma';

-- 4 Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
select Movie_Name from movies_sql where Number_of_Screens > 1000;

-- 5 Retrieve the names of all the Bollywood movies which have generated Revenue(INR) more than 700000000 in the dataset
select Movie_Name from movies_sql where Revenue > 700000000;

-- 6 .Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset
select Movie_Name,Budget from movies_sql where Budget < 1000000;

-- 7 Retrieve the names of all the Bollywood movies which are flop in the dataset.(flop=revenue – budget)
select Movie_Name from movies_sql where Budget > Revenue;

-- 8 Retrieve the names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget)
select Movie_Name from movies_sql where Revenue > Budget;

-- 9 .Retrieve the names and loss of all the Bollywood movies in the dataset.(loss=revenue – budget)
select Movie_Name from movies_sql where Revenue-Budget>0;

-- 10 Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset
select Movie_Name from movies_sql where Release_Period='Holiday';

-- 11 Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the dataset.
select Movie_Name from movies_sql where Lead_Star='Akshay Kumar' and Director='Priyadarshan';

-- 12 Retrieve the names of all the Bollywood starting with ‘a’ in the dataset
select Movie_Name from movies_sql where Movie_Name like 'a%';

-- 13 Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
select Movie_Name from movies_sql where Movie_Name like '%a';

-- 14 Retrieve the names of all the Bollywood  movies having ‘a’ at second place of the name in the dataset
select Movie_Name from movies_sql where Movie_Name like '_a%';

-- 15 Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset.
select Movie_Name from movies_sql where Music_Director = 'Amit Trivedi';

-- 16 Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.
select Movie_Name from movies_sql where Lead_Star = 'Akshay Kumar' and Genre='Comedy';

-- 17 Retrieve the names of movies and star name starring khan in the dataset.
select Movie_Name,Lead_Star from movies_sql where Lead_Star like '%Khan';

-- 18 Retrieve all the information of movies race and race2 in the dataset. 
select * from movies_sql where Movie_Name = 'Race' or Movie_Name = 'Race 2';

-- 19 Retrieve the names of all the thriller Bollywood movies in the datase
select Movie_Name from movies_sql where Genre = 'thriller';

-- 20 Retrieve the names and budget of all the bollywood movies according to the highest budget to lowest budget in the dataset.
select Movie_Name,Budget from movies_sql order by budget desc;

-- 21 Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset
select Movie_Name,Budget from movies_sql order by budget desc limit 5;

-- 22 Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset
select Movie_Name from movies_sql order by Revenue desc limit 10;

-- 23 Retrieve the names of top 5 movies of salman khan in the dataset.
select movie_name from movies_sql where Lead_Star = 'Salman Khan' order by Revenue desc limit 5;

-- 26 Which is the second movie released on maximum screens.
select movie_name,Number_of_Screens from movies_sql order by Number_of_Screens desc limit 1,1;

-- 27 Which is the 10th movies with highest budget
select movie_name,budget from movies_sql order by Budget desc limit 9,1;

-- 28 Which is the 2nd movie of Amitabh Bachchan with highest budget
select movie_name,Lead_Star from movies_sql where Lead_Star = 'Amitabh Bachchan' order by Budget desc limit 1,1;

-- 29 Which are the flopped movies of Akshay Kumar
select movie_name from movies_sql where Lead_Star='Akshay Kumar' and Revenue<Budget;

-- 30 	With which director Sharukh Khan have given the biggest hit movie 
select Movie_Name,Director,lead_star,revenue from movies_sql where Lead_Star = 'Shahrukh Khan' order by Revenue desc limit 0,1;
select Movie_Name,Director,lead_star,revenue from movies_sql where Lead_Star = 'Shahrukh Khan' order by Revenue desc;
