SELECT *
  FROM product
-- WHERE ProductID = 5;
WHERE Listprice = 57.50;


select * from product
  where ListPrice < 55;

select * from product
order by Description desc;

select max(listprice) from product;

select count(listprice) from product
  where listprice = 57.50;

