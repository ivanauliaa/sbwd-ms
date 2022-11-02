CREATE TABLE orders (
    id int PRIMARY KEY AUTO_INCREMENT,
    total_price FLOAT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    customer_id int,
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);