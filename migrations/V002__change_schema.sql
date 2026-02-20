DROP TABLE orders_date;
DROP TABLE product_info;

ALTER TABLE product 
ADD COLUMN price DOUBLE PRECISION;

ALTER TABLE orders  
ADD COLUMN date_created DATE;

ALTER TABLE order_product
ADD CONSTRAINT fk_order_product_product FOREIGN KEY (product_id)
  REFERENCES product(id),
ADD CONSTRAINT fk_order_product_orders FOREIGN KEY (order_id)
  REFERENCES orders(id);

