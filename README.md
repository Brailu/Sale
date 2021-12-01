# SALE

A simple sales report written in SQL running on SQLite3.

# Requirements

1. SQLite3

# Usage

Create the database:

    sqlite3 --table db.sqlite3

Create schemas (DDL):

    .read schema.sql

Here we use `create table` statements to create the tables.

Insert data (DML):

    .read data.sql

Here we use `insert` statements to insert data into the tables.

Run the sales by day report:

    .read sales_by_day.sql

Here we use `select` statement to select rows from the table, and:

1. Use an alias, adding the `as '...'` suffix in the columns
2. Use a function `sum` to sum the prices
3. As we use a group function, we need to group rows, using the `group by`
statement
4. As we need to select rows both from `sales` and `products` table (to get
the prices) we use joins, more specifically the `inner join`

Execute the top products report:

    .read top_products.sql

Here we use the same statements from the previous report.

# Contribute

https://github.com/brunitto/sale