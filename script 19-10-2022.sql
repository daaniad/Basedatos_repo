/*Mostrar número de paises por continente donde haya habido un incremento positivo del PIB 
(GNP-GPNOld). Motrar ordenado por el número de paises en orden descendente*/
select Continent, count(*) from country where GNP>GNPOld group by continent order by count(*) desc;
/*Mismo ejercicio anterior, pero solo mostrar los grupos que tengan menos de 10 paises.*/
select Continent, count(Name) 
from country 
where GNP>GNPOld
group by continent 
order by count(name) desc;
/*Paises de Oceania y el nombre de su capital*/
select country.name, country.capital 
from world.country join world.country on world.country.code = world.country.code;
