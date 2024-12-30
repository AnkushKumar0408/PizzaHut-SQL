-- Basic:
-- Retrieve the total number of orders placed.

-- select count(*) from orders


-- Calculate the total revenue generated from pizza sales.

-- SELECT 
--     SUM(orders_details.quantity * pizzas.price) AS total
-- FROM
--     orders_details
--         JOIN
--     pizzas ON pizzas.pizza_id = orders_details.pizza_id;


-- Identify the highest-priced pizza.

-- select * from pizzas
-- order by price desc

-- Identify the most common pizza size ordered.

-- select pizzas.size,count(quantity)
-- from pizzas
-- join orders_details on orders_details.pizza_id = pizzas.pizza_id
-- group by pizzas.size


-- List the top 5 most ordered pizza types along with their quantities.

-- select pizza_types.name,sum(orders_details.quantity)
-- from pizza_types
-- join pizzas on pizzas.pizza_type_id = pizza_types.pizza_type_id
-- join orders_details on orders_details.pizza_id = pizzas.pizza_id
-- group by pizza_types.name