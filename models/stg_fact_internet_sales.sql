SELECT 
    SalesOrderNumber,
    ProductKey,
    CustomerKey,
    OrderDate,
    SalesAmount
FROM {{source ('adventureworks', 'FactInternetSales')}}