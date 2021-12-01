-- customers table
create table if not exists `customers` (
    `id` integer primary key,
    `name` varchar(256) not null unique
);

-- products table
create table if not exists `products` (
    `id` integer primary key,
    `name` varchar(256) not null unique,
    `price` decimal not null
);

-- sales table
create table if not exists `sales` (
    `id` integer primary key autoincrement,
    `date` datetime not null,
    `customer_id` integer not null,
    `product_id` integer not null,
    foreign key(`customer_id`) references `customers`(id),
    foreign key(`product_id`) references `products`(id)
);