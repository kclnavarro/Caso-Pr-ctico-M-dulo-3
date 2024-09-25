--Pasos a seguir
--a) Crear la base de datos con el archivo create_restaurant_db.sql

--b) Explorar la tabla “menu_items” para conocer los productos del menú.
SELECT * FROM menu_items; 

 
--1.- Realizar consultas para contestar las siguientes preguntas:

--● Encontrar el número de artículos en el menú.
SELECT COUNT (menu_item_id) AS "Número de items"
	FROM menu_items;


--● ¿Cuál es el artículo menos caro y el más caro en el menú?
SELECT item_name, price FROM menu_items 
	ORDER BY price ASC;

SELECT item_name, price FROM menu_items 
	ORDER BY price DESC;

--● ¿Cuántos platos americanos hay en el menú?
SELECT COUNT(*) FROM menu_items
   WHERE category LIKE 'American';


--● ¿Cuál es el precio promedio de los platos?
SELECT AVG(price)
From menu_items;



--c) Explorar la tabla “order_details” para conocer los datos que han sido recolectados.
SELECT * FROM order_details;


--1.- Realizar consultas para contestar las siguientes preguntas:

--● ¿Cuántos pedidos únicos se realizaron en total?
SELECT COUNT (order_details_id) AS "Número de pedidos"
	FROM order_details;


--● ¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?
SELECT order_id, COUNT(item_id)
	FROM order_details
	GROUP BY order_id
	ORDER BY COUNT(item_id) DESC
	LIMIT 5;


--● ¿Cuándo se realizó el primer pedido y el último pedido?
SELECT order_date FROM order_details 
	ORDER BY order_date ASC
	LIMIT 1;

SELECT order_date FROM order_details 
	ORDER BY order_date DESC
	LIMIT 1;

--● ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?
SELECT COUNT(*) FROM order_details
WHERE order_date BETWEEN '2023-01-01' and '2023-01-05';


--d) Usar ambas tablas para conocer la reacción de los clientes respecto al menú.

--1.- Realizar un left join entre entre order_details y menu_items con el identificador item_id(tabla order_details) y menu_item_id(tabla menu_items).
SELECT * 
	FROM order_details 
	LEFT JOIN menu_items
	ON order_details.item_id=menu_items.menu_item_id;


-- Platillos mas vendidos del menú
SELECT COUNT (order_details.order_id), menu_items.item_name
	FROM order_details 
	LEFT JOIN menu_items
	ON order_details.item_id=menu_items.menu_item_id
 GROUP BY menu_items.item_name
	ORDER BY COUNT(order_details.order_id) DESC
	LIMIT 5;

--Platillos menos vendidos 
SELECT COUNT (order_details.order_id), menu_items.item_name
	FROM order_details 
	LEFT JOIN menu_items
	ON order_details.item_id=menu_items.menu_item_id
 GROUP BY menu_items.item_name
	ORDER BY COUNT(order_details.order_id) ASC
	LIMIT 6;

SELECT COUNT (order_details.order_id), menu_items.item_name
	FROM order_details 
	LEFT JOIN menu_items
	ON order_details.item_id=menu_items.menu_item_id
 GROUP BY menu_items.item_name
	HAVING COUNT (item_id)!=0
	ORDER BY COUNT(order_details.order_id) ASC
	LIMIT 5;


--5 Platillos mas vendidos por categoria 

SELECT COUNT (order_details.order_id), menu_items.item_name, menu_items.category
	FROM order_details 
	LEFT JOIN menu_items
	ON order_details.item_id=menu_items.menu_item_id
 GROUP BY menu_items.item_name, menu_items.category
	HAVING COUNT (item_id)!=0
	ORDER BY COUNT(order_details.order_id) ASC
	LIMIT 5; 



--5 Platillos mas vendidos por categoria
SELECT COUNT (order_details.order_id), menu_items.item_name, menu_items.category
	FROM order_details 
	LEFT JOIN menu_items
	ON order_details.item_id=menu_items.menu_item_id
 GROUP BY menu_items.item_name, menu_items.category
	HAVING COUNT (item_id)!=0
	ORDER BY COUNT(order_details.order_id) DESC
	LIMIT 5; 

--e) Una vez que hayas explorado los datos en las tablas correspondientes y respondido las preguntas planteadas, 
realiza un análisis adicional utilizando este join entre las tablas. 
	
--Elobjetivo es identificar 5 puntos clave que puedan ser de utilidad para los dueños del
restaurante en el lanzamiento de su nuevo menú. Para ello, crea tus propias consultas y
utiliza los resultados obtenidos para llegar a estas conclusiones.