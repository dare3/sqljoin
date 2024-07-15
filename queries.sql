-- write your queries here
-- 1st query
SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.owner_id;

--2nd query
SELECT first_name, last_name, COUNT(owner_id) AS vehicle_count
FROM owners o
JOIN vehicles v ON o.id = v.owner_id
GROUP BY first_name, last_name
ORDER BY first_name;


--3rd query
SELECT 
  first_name, last_name, 
  ROUND(AVG(price)) as average_price, 
  COUNT(owner_id) 
FROM 
  owners o
JOIN 
  vehicles v ON o.id = v.owner_id
GROUP BY 
  first_name, last_name
HAVING 
  COUNT(owner_id) > 1 AND AVG(price) > 10000
ORDER BY 
  first_name DESC;
