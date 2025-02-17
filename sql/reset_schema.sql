drop table if exists stg_products;
create table stg_products(
    product_id char(4) primary key
    ,product_name varchar(100)
    ,category varchar(100)
    ,price decimal(10,2)
);

drop table if exists stg_orders;
create table stg_orders(
    order_id char(4) primary key
    ,customer_id char(4)
    ,order_date char(10)
    ,total_amount decimal(10,2)
);

drop table if exists stg_order_items;
create table stg_order_items(
    order_item_id char(5) primary key
    ,order_id char(4)
    ,product_id char(4)
    ,quantity integer
    ,price decimal(10,2)
);
create index oi_oid on stg_order_items(order_id);
create index oi_pid on stg_order_items(product_id);

