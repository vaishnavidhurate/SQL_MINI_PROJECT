use foodonline;
select * from swiggy;
/*count the total rows of swiggy*/
select count(ID) from swiggy;
 
/*find the total cities in database*/
select count(distinct City) from swiggy;

/*find the total restuarant in each city */
select City,count(distinct Restaurant)  as Total_hotels from swiggy
group by City
ORDER by total_hotels desc;

/*find the total no of restaurants from which order is made*/
select count( distinct Restaurant) as total_orders from swiggy;

/*find total no of orders made from each restaurant dispaly in ascending order*/
select city, Restaurant,count(ID)from swiggy
group by city, Restaurant
order by count(ID) desc;

/*find all restuarnat who sells south indian , chinese and biryani*/
select Restaurant, food_type from swiggy
where food_type='Biryani' or food_type='Chinese' or  food_type='South Indian';
/*OR*/
select Restaurant, food_type from swiggy
where food_type like '%Chinese%' or food_type like '%Biryani%' or   food_type like '%South Indian%';

/*find top three restaurant with highest rating*/
select city, Restaurant ,avg(Avg_ratings)as Average_ratings from swiggy
group by city,Restaurant
order by Average_ratings desc
limit 3;

/*find all restaurant with highest rating*/
select * from swiggy
where Avg_ratings=(select max(Avg_ratings)
from swiggy);

/*find top three retaurant with maxima orders*/



/*find average delivery time for each city*/
select city,avg(Delivery_time)as Average_delivery_time
from swiggy
group by City;



