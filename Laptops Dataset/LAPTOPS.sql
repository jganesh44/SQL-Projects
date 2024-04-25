use etlclass;
select * from laptops;

-- 1 Find the total number of laptops in the dataset.
select Count(*) as Total_Laptops from Laptops;

-- 2 Select laptops with a screen size larger than 15 inches.
select * from Laptops where Inches > 15;

-- 3 Filter laptops that have IPS panels and are touchscreen-enabled.
select * from laptops where has_ips_panel=1 and is_touchscreen=1;

-- 4 Sort laptops by price in descending order.
select * from laptops order by Price desc;

-- 5 Find laptops with a specific CPU brand (e.g., Intel) and sort them by CPU speed
SELECT *
FROM laptops
WHERE cpu_brand IN ('Intel', 'AMD','Samsung')
ORDER BY cpu_speed DESC;

-- 6 Calculate the average price of laptops.
Select avg(Price) from laptops;

-- 7 Find the maximum and minimum RAM capacity among all laptops.
select max(ram) from laptops;
select min(ram) from laptops;

-- 8 Count the number of laptops for each operating system (OpSys).
select opsys,count(*) as no_of_laptops from laptops group by opsys order by no_of_laptops desc;

-- 9 Calculate the total weight of all laptops in the dataset.
Select sum(Weight) from laptops;

-- 10 Group laptops by CPU brand and calculate the average CPU speed for each brand.
select cpu_brand,avg(cpu_speed) from laptops group by cpu_brand order by avg(cpu_speed) desc;

-- 11 Find the average price of laptops for each screen size category.
select inches,avg(price) from laptops group by inches order by avg(price) desc;

-- 12 Group laptops by memory type type and count the number of laptops for each type.
select memory_type,count(*) as no_of_laptops from laptops group by memory_type order by no_of_laptops desc;

-- 13 Select laptops with a price higher than the average price of all laptops.
select * from laptops where price > (select avg(price) from laptops) order by price;

-- 14 Find laptops with a screen resolution higher than the average resolution for laptops with IPS panels.	
Select avg(resolution_height) from laptops;
Select avg(resolution_width) from laptops;
select * from laptops where resolution_height>1894 and resolution_width > 1070 and has_ips_panel=1 order by price;

-- 15 Identify laptops with the best performance-to-price ratio (e.g., highest CPU speed relative to price).
Select * from laptops order by(cpu_speed/Price)  desc limit 10;

-- 16 Find the most common combination of CPU brand and GPU brand among laptops.
select cpu_brand, gpu_brand, COUNT(*) as no_of_laptops from laptops group by cpu_brand, gpu_brand order by no_of_laptops desc limit 1;

-- 17 Determine the average price difference between laptops with and without touchscreen functionality.
select is_touchscreen,avg(price) from laptops group by is_touchscreen;

-- 18 Find the average CPU speed of laptops for each CPU brand and screen size category combination
select cpu_brand, inches, avg(cpu_speed) from laptops group by cpu_brand,inches order by avg(cpu_speed) desc;

-- 19 Identify the top 5 most expensive laptops for each company.
select Company,Price from laptops group by company order by price desc;

SELECT 
    l1.Index,
    l1.company,
    l1.price
FROM 
    laptops l1
LEFT JOIN 
    laptops l2 ON l1.company = l2.company AND l1.price < l2.price
GROUP BY 
    l1.Index,
    l1.company,
    l1.price
HAVING 
    COUNT(*) <= 4;


-- 20 Calculate the total storage capacity (primary storage + secondary storage) for each laptop.
alter table laptops add column total_storage_capacity int;
update laptops set total_storage_capacity = primary_storage + secondary_storage;
select * from laptops order by total_storage_capacity desc;

-- 21 Determine the percentage of laptops that are touchscreen-enabled for each CPU brand.
select cpu_brand, COUNT(*) as no_of_laptops from laptops where is_touchscreen = 1  group by cpu_brand order by no_of_laptops desc;
select 
    cpu_brand,
    sum(case when is_touchscreen = 1 then 1 else 0 end) as touchscreen_count,
    count(*) as total_count,
    (sum(case when is_touchscreen = 1 then 1 else 0 end)  * 100.0 / count(*)) as touchscreen_percentage
from laptops
group by cpu_brand;

-- 22 Find the average weight of laptops for each operating system (OpSys) and screen size category combination.
select inches,Opsys,avg(weight) from laptops group by inches,OpSys order by avg(weight);

-- 23 Identify the company with the highest average laptop price.
select Company,avg(price) from laptops group by company order by avg(price) desc;

-- 24 Calculate the total number of laptops for each combination of CPU brand and GPU brand.
select cpu_brand, gpu_brand, COUNT(*) as no_of_laptops from laptops group by cpu_brand, gpu_brand order by no_of_laptops desc;

-- 25 Display the company names for those with the name having 'e' in second position.
select company from laptops where company like '_e%';
