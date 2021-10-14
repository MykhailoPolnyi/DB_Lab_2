USE labor_sql;

-- Task 1.
SELECT pc.model, speed, hd
FROM pc JOIN product ON pc.model = product.model
WHERE hd IN (10, 20) AND  maker = "A"
ORDER BY speed;

-- Task 2.
SELECT * 
FROM outcome_o
WHERE date LIKE "____-__-14%";

-- Task 3.
SELECT maker
FROM product JOIN pc ON pc.model = product.model
GROUP BY maker 
	HAVING MIN(speed)>=600;

-- Task 4.
SELECT maker
FROM product LEFT JOIN pc ON  pc.model = product.model
WHERE type="PC" 
GROUP BY maker
	HAVING COUNT(pc.model) = 0;

-- Task 5.
SELECT DISTINCT maker
FROM product 
WHERE EXISTS (
	SELECT all_products.maker 
	FROM product AS all_products LEFT JOIN pc ON pc.model = all_products.model 
	WHERE type = "PC" AND product.maker = all_products.maker
	GROUP BY maker 
	 HAVING COUNT(DISTINCT all_products.model) = COUNT(DISTINCT pc.model))
ORDER BY maker;
  
 -- Task 6
 SELECT CONCAT("Ship name: ", name) as name, 
		CONCAT("Ship class: ", class) as class, 
		CONCAT("Launch year: ", launched) as launch
 FROM ships;
 
 -- Task 7
SELECT maker
FROM product LEFT JOIN pc ON  pc.model = product.model
WHERE type="PC"
GROUP BY maker
	HAVING COUNT(DISTINCT pc.model) BETWEEN 1 AND COUNT(DISTINCT product.model) - 1; 
 
 -- Task 8
SELECT ship, 
	(SELECT classes.country FROM ships JOIN classes ON outcomes.ship = ships.name AND ships.class = classes.class)  AS country
FROM outcomes
WHERE result="sunk";

-- Task 9
SELECT maker, IF(product_pc=0, "no", CONCAT("yes(", available_pc, ")")) AS creates_pc 
FROM(SELECT maker, SUM(CASE WHEN product.type="PC" THEN 1 ELSE 0 END) AS product_pc, COUNT(available_models.model) as available_pc
	FROM product 
	LEFT JOIN (SELECT pc.model FROM pc) AS available_models ON available_models.model = product.model
	GROUP BY maker) AS products_pc
ORDER BY maker;

-- Task 10
SELECT type, product.model, MAX(price) AS max_price
FROM (SELECT model, price 
	FROM pc
    UNION SELECT model, price
    FROM printer
    UNION SELECT model, price
    FROM laptop) AS product_any JOIN product ON product_any.model = product.model
GROUP BY product.model