use AdventureWorksDW;


select ProductKey, ProductAlternateKey, EnglishProductName, Color, StandardCost, FinishedGoodsFlag 
from dimproduct 
where FinishedGoodsFlag = 1;

select ProductKey, ProductAlternateKey, EnglishProductName, StandardCost, ListPrice, ListPrice - StandardCost AS MARKUP
FROM dimproduct
where ProductAlternateKey LIKE 'FR%' OR ProductAlternateKey LIKE 'BK%';


-- selezioniamo soltanto i prezzi di listino tra i 1000 e i 2000 --
Select ProductKey, ProductAlternateKey, EnglishProductName, StandardCost, ListPrice, FinishedGoodsFlag, ListPrice - StandardCost AS MARKUP
from dimproduct 
where FinishedGoodsFlag = 1 and ListPrice between 1000 and 2000;

-- seleziono soltanto gli agenti -- 
select * 
from dimemployee
where SalespersonFlag = 1;

select *, SalesAmount - TotalProductCost as Profit
from factresellersales
where OrderDate >= '2020-01-01'
AND ProductKey IN (597, 598, 477, 214);