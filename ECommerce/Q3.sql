SELECT * FROM `order`;
SELECT * FROM customer;

SELECT * FROM `order`
INNER JOIN customer
ON `order`.CUS_ID = customer.CUS_ID HAVING  `order`.ORD_AMOUNT>=3000;

	(SELECT  `order`.*, customer.CUS_NAME,customer.CUS_GENDER   from `order` 
	INNER JOIN  customer WHERE  `order`.CUS_ID =customer.CUS_ID HAVING  `order`.ORD_AMOUNT>=3000)

SELECT t1.CUS_ID,t1.CUS_NAME,t1.CUS_GENDER,t1.ORD_AMOUNT FROM
(
	SELECT  `order`.*, customer.CUS_NAME,customer.CUS_GENDER   from `order` 
	INNER JOIN  customer WHERE  `order`.CUS_ID =customer.CUS_ID HAVING  `order`.ORD_AMOUNT>=3000
) AS t1 GROUP BY t1.CUS_ID;

 SELECT * FROM 
 (
 	SELECT t1.CUS_ID,t1.CUS_NAME,t1.CUS_GENDER,t1.ORD_AMOUNT FROM
	(
		SELECT  `order`.*, customer.CUS_NAME,customer.CUS_GENDER   from `order` 
		INNER JOIN  customer WHERE  `order`.CUS_ID =customer.CUS_ID HAVING  `order`.ORD_AMOUNT>=3000
	) AS t1 GROUP BY t1.CUS_ID
 ) AS t2 GROUP BY t2.cus_gender;

 SELECT COUNT(t2.CUS_GENDER) as No_Of_Customers, t2.CUS_GENDER FROM 
 (
 	SELECT t1.CUS_ID,t1.CUS_NAME,t1.CUS_GENDER,t1.ORD_AMOUNT FROM
	(
		SELECT  `order`.*, customer.CUS_NAME,customer.CUS_GENDER   from `order` 
		INNER JOIN  customer WHERE  `order`.CUS_ID =customer.CUS_ID HAVING  `order`.ORD_AMOUNT>=3000
	) AS t1 GROUP BY t1.CUS_ID
 ) AS t2 GROUP BY t2.CUS_GENDER;
