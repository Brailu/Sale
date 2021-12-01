-- sales by day report
select
    `sales`.`date` as 'day',
    sum(`products`.`price`) as 'total'
from `sales`
    inner join `products` on `products`.`id` = `sales`.`product_id`
group by `sales`.`date`
;