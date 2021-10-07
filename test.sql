
--1 examing all the tables
SELECT * FROM trips
limit 2;
 
SELECT * FROM riders
limit 2;
 
SELECT * FROM cars
limit 2;

---2

--The primary key of trips is id;
--The primary key of riders is id;
--The primary key of cars is id;


--3--cross join riders n cars
select *
from riders
 cross join cars
 limit 5;

--4 trip log
select 
       a.date as 'Trip Date',
       b.username 'Rider',
       a.pickup as 'Pickup',
       a.dropoff as 'Dropoff',
       a.car_id as 'Car Id',
       a.type as 'Trip Type',
       b.first as 'First trip',
       b.last as 'Last trip',
       b.total_trips as 'Total trips',
       b.referred as 'Referred'
       
       from trips a
       left join riders b
       on a.rider_id=b.id
       limit 5;  
--5 trips n cars link
select 
       a.date,
       a.type,
       a.cost,
       b.model,
       b.OS,
       b.status,
       b.trips_completed
       from trips a
       join cars b
       on a.car_id=b.id
       limit 5;

       --6
       select * from riders
       union 
       select * from riders2
       limit 5;

       --7
       select round(avg(cost),2) 
       as 'Average cost of a trip'
       from trips;

      ---8
      select * from riders
      where total_trips <500
      union 
      select * from riders2
      where total_trips <500;


---9
select count(*) as 'Active Cars'
from cars 
where status='active';

--10 cars with highest trip
select *
from cars
order by trips_completed desc
limit 2;

