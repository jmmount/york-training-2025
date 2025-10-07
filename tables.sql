create table customer-dim (
	customer_id integer primary key,
	customer_name varchar,
	customer_email varchar,
	customer_phone varchar,
	customer_address varchar
)

create table product-dim (
	product_id integer primary key,
	product_name varchar,
	product_category varchar references product-category-dim(product_category)
)

create table sales_facts (
	order_id integer primary key,
	customer_id integer references customer_dim(customer_id),
	product_id integer references product_dim(product_id),
	order_date date,
	order_date_id integer references order_date_dim(order_date_id),
	store_id integer references store_dim(store_id),
	price decimal,
	quantity integer
)

create table order_date_dim (
	order_date_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	order_date date,
	order_month_id integer references order-month-dim(order_month_id),
	order_quarter_id integer references order-quarter-dim(order_quarter_id)
)

create table order-month-dim (
	order_month_id primary key,
	order_month_name varchar
)

create table order-quarter-dim (
	order_quarter_id integer primary key,
	order_quarter integer
)

create table product-category-dim (
	product_category_id integer primary key,
	product_category varchar
)

 create table store-dim (
	store_id integer primary key,
	store_name varchar,
	store_region varchar
)