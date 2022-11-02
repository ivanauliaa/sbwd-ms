CREATE TABLE products (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    category_id int,
    FOREIGN KEY (category_id) REFERENCES  categories(id) ON DELETE CASCADE
);