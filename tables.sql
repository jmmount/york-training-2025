create table customer-dim (
	customer_id integer primary key,
	customer_name varchar,
	customer_email varchar,
	customer_phone varchar,
	customer_address varchar,
	customer_state_id integer references customer_state_dim(customer_state_id)
)

create table product-dim (
	product_id integer primary key,
	product_name varchar,
	product_category_id integer references product-category-dim(product_category_id)
)

create table sales_facts (
	order_id integer primary key,
	customer_id integer references customer_dim(customer_id),
	product_id integer references product_dim(product_id),
	order_date integer references order_date_dim(order_date),
	store_id integer references store_dim(store_id),
	price decimal,
	quantity integer
)

create table customer_state_dim (
	customer_state_id generated always as identity integer primary key,
	customer_state_name varchar,
	customer_store_id integer
)

create table order_date_dim (
	order_date_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	order_date date,
	order_year_id integer references order_year-dim(order_year_id),
	order_month_id integer references order-month-dim(order_month_id),
	order_quarter_id integer references order-quarter-dim(order_quarter_id)
)

create table order-month-dim (
	order_month_id generated always as identity integer primary key,
	order_month_name varchar
)

create table order-year-dim (
	order_year_id generated always as identity integer primary key,
	order_year date
)

create table product-category-dim (
	product_category_id generated always as identity integer primary key,
	product_category varchar
)

 create table store-dim (
	store_id integer primary key,
	store_name varchar,
	store_region varchar
)

create table order-quarter-dim (
	order_quarter_id integer generated always as identity primary key,
	order_quarter_name varchar
)
