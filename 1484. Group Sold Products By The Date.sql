select sell_date, count(distinct(product)) as num_sold, GROUP_CONCAT( DISTINCT product 
    ORDER BY product ASC 
    separator ',') AS Products  from activities group by sell_date order by sell_date;
