with cte as(
    SELECT 
        SalesOrderNumber,
        ProductKey,
        CustomerKey,
        OrderDate,
        SUM(SalesAmount) AS TotalSales
    FROM {{ ref('stg_fact_internet_sales') }}
    GROUP BY SalesOrderNumber, ProductKey, CustomerKey, OrderDate
)
select * 
from cte
