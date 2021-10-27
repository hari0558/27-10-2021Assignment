-----------------------------------------------------------
/*
1. Create a csv file with following details

ProductId,ProductDescription,ProductPrice
P1001       XYZ                 34000
P1002       ABC                 45000


Load data from above csv into database table product.

2. Create table called item with following attributes,

   itemId
   itemDesc
   itemPrice

 put  data into item table and export data in .csv format
*/
------------------------------------------------------------
use test;
create table product(
productId varchar(40),
productDescription varchar(40),
productPrice double);

load data infile 'd:\hari\sql\product.csv'
into table product fields terminated by','
lines terminated by '\r\n'
ignore 1 rows;

create table item(itenId varchar(40),
itemDescription varchar(60),
itemPrice double);

insert into item (itenId,itemDescription,itemPrice)
 values ('AP001','MOBILE PHONE',20000),('AP002','TV',18000),
 ('AP003','CHARGER',200);
 select * from item;
 select * into outfile 'd:\hari\sql.item.csv'
 fields terminated by ','
 optionally enclosed by "'"
 lines terminated by '\r\n'
 from item;