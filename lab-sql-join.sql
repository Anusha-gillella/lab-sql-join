use sakila;

-- Query 1
select c.category_id, c.name, count(f.film_id) from category as c
join film_category as f
using(category_id)
group by c.category_id;

-- Query 2
select s.staff_id, s.first_name, s.last_name, a.address from staff as s
join address as a
using(address_id);


-- Query 3 (total amount by each Staff_id)
select s.staff_id, s.first_name, s.last_name, sum(p.amount) from staff as s
join payment as p
using(staff_id)
where p.payment_date between '2005-01-01' and '2005-12-31'
group by s.staff_id;


-- Query 4
select f.film_id, count(fa.actor_id) from film as f
join film_actor as fa
using(film_id)
group by f.film_id;

-- Query 5
select c.customer_id, c.first_name, c.last_name, sum(p.amount) from payment as p
join customer as c
using(customer_id)
group by c.customer_id
order by c.last_name asc;



