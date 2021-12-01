-- top products report
select
    `products`.`name` as 'product',
    count(1)
from `sales`
    inner join `products` on `products`.`id` = `sales`.`product_id`
group by `products`.`name`
;