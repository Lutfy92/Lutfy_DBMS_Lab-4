SELECT * FROM customer AS c;
SELECT * FROM customer AS c WHERE c.CUS_NAME = 'MEGHA';
SELECT * FROM customer AS c WHERE (c.CUS_NAME LIKE  'A%' OR c.CUS_NAME LIKE  '%A');
SELECT * FROM customer AS c WHERE c.CUS_NAME LIKE  'A%N';