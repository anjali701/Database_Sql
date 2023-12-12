create schema cars ;
use cars;
 -- Read data --
select * from car_dekho;
 -- To get a count of total records --
select count(*) from car_dekho;

-- Manageer asked the employee how many cars is available in 2023 --
select count(*) , year from car_dekho where year = 2023; 

-- Manageer asked the employee how many cars is available in 2020 , 2021 , 2022 --
select count(name) , year from car_dekho where year in (2020 , 2021 , 2023) group by year; 

-- between is used when  we have some range given --
select count(name) , year from car_dekho where year between 2020 and 2023 group by year;

-- client asked me to print the total of all cars by year  i dont see all the details -- 
select count(name) , year from car_dekho group by year ;

-- client asked to car dealer how many diesal car be there in 2020 --
select count(* ) from car_dekho where fuel = "diesel" and year = 2020 group by year;

 -- client asked to car dealer how many petrol car be there in 2020 --
select count(*) from car_dekho where fuel = "petrol" and year = 2020 group by year;

-- The manager told the employee to give a print of all the fuel cars ( petrol , diesel , and cng)  come by all yaer --
select count(*) , year from car_dekho where fuel = "petrol" group by year ;
select count(*) , year from car_dekho where fuel = "diesel" group by year ;
select count(*) , year from car_dekho where fuel = "cng" group by year ;

-- Manager said there were more than 100 cars in a given year , which year  had more than 100 cars --

select count(*) , year from car_dekho group by year having count(*) > 100; 

-- Manager said to the employees all cars count details bw 2015 and 2023 we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023 ;

-- Manager said to the employees all cars  details bw 2015 and 2023 we need a complete list --
select * from car_dekho where year between 2015 and 2023 ;










