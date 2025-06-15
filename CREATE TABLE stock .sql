CREATE TABLE stock (
  product_id INT PRIMARY KEY,
  product_name VARCHAR2(100) NOT NULL,
  quantity INT DEFAULT 0 CHECK (quantity >= 0),
  last_update DATE
);

CREATE TABLE stock_incoming (
  product_id INT PRIMARY KEY,
  product_name VARCHAR2(100) NOT NULL,
  quantity INT CHECK (quantity > 0),
  incoming_date DATE NOT NULL
);
