CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  city VARCHAR(50)
);
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, customer_name, city)
VALUES
  (1, 'Dutch Van', 'New York'),
  (2, 'Bill Williams', 'London'),
  (3, 'Micha Bell', 'Paris');

  INSERT INTO orders (order_id, order_date, customer_id)
VALUES
  (101, '2023-06-01', 1),
  (102, '2023-06-10', 2),
  (103, '2023-06-15', 1),
  (104, '2023-06-20', 3);

  SELECT customers.customer_id, customers.customer_name, customers.city, orders.order_id, orders.order_date
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;
