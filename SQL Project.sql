create database project;
use project;
select *from cosmetics;
select *from cosmetics where brand='drunk elephant';
select Brand, name,price from cosmetics;
select *from cosmetics order by name;
select distinct brand from cosmetics order by brand;
select *from cosmetics where Name like'd%';
select *from cosmetics where price <>175;
select *from cosmetics where brand in ('la mer','it cosmetics');
select *from cosmetics where price <>175;
select *from cosmetics where brand is not null;
select *from cosmetics where price between 50 and 100;
desc cosmetics;
select prod_rank,
case
when Prod_rank between 3.0 and 4.0 then 'Good'
when Prod_rank between 4.1 and 4.5 then 'Better'
else 'Best'
end as 'Prod_rank1'
from cosmetics;
select count(*) from cosmetics where combination like'0';
select max(price) from cosmetics;
select min(price) from cosmetics;
select avg(price) from cosmetics;
select price from cosmetics  order by price desc;
select combination,if(combination=1,'true','false') from cosmetics ;
select prod_rank,brand from cosmetics where brand='LA MER' group by prod_rank having count(price)<300 order by brand;   
select price,
case 
when price>=250 then 'High'
when price>=150 then 'Medium'
when price>=50 then 'Low'
else 'Very Low'
end as 'Price_1'
 from cosmetics;
select brand, lower(brand) from cosmetics;
select brand, replace('la mer',' ','-')  from cosmetics;
select Dry, if (Dry=1,'Yes','No') from cosmetics;
select normal, if (normal=1,'Yes','No') from cosmetics;
select oily, if (oily=1,'Yes','No') from cosmetics;
select sensitive_skin, if (sensitive_skin=1,'Yes','No') from cosmetics;
select name,price,(select avg(price) from cosmetics as avg_price) from cosmetics;
select  *from cosmetics where ingredients like 'A%';
select ingredients,combination,dry,normal,oily,sensitive_skin from cosmetics where ingredients like '_a%';
select brand,name,price from cosmetics where prod_rank>4.5 and combination='1';
select * from cosmetics where combination and dry and normal and oily and sensitive_skin ='1';
select  * from cosmetics where combination or dry or normal or oily or sensitive_skin ='0';
select *from cosmetics where brand not in('LA MER','SK-II');
select *from cosmetics where brand='LA MER' order by price desc limit 5 offset 1;
