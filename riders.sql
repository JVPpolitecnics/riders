
-- create DB
DROP DATABASE IF EXISTS `riders`;
CREATE DATABASE `riders`;
USE riders;
-- create userType
CREATE TABLE user_type (
  type_id INT PRIMARY KEY auto_increment,
  type_name VARCHAR(100)
); 
-- create user table
CREATE TABLE user (
    user_id INT PRIMARY KEY,
    surname1 VARCHAR(100),
    surname2 VARCHAR(100),
    phone_number VARCHAR(100),
    profile_img_filepath VARCHAR(100),
    dni VARCHAR(100),
    cif VARCHAR(100),
    adress VARCHAR(100),
    post_code VARCHAR(100),
    user_type_id int,
    -- add user type foreign key
	FOREIGN KEY (user_type_id)
    REFERENCES user_type(type_id)
); 
-- create order status table
CREATE TABLE order_status (
 status_id INT PRIMARY KEY auto_increment,
 status  VARCHAR(100)
); 
-- create order content table
CREATE TABLE charity_menu (
id_menu INT PRIMARY KEY auto_increment,
 items VARCHAR(100)
 ); 
-- create order table
CREATE TABLE food_order (
 order_id INT PRIMARY KEY auto_increment,
 charity_menu_id INT,
 date VARCHAR(100),
 id_provider INT,
 id_rider INT,
 id_customer INT,
 id_order_status INT,
  -- add provider foreign key
	FOREIGN KEY (id_provider)
    REFERENCES user(user_id),
    -- add rider foreign key
    FOREIGN KEY (id_rider)
    REFERENCES user(user_id),
      -- add customer foreign key
    FOREIGN KEY (id_customer)
    REFERENCES user(user_id),
      -- add order status foreign key
    FOREIGN KEY (id_order_status)
    REFERENCES order_status(status_id),
      -- add charity_menu foreign key
    FOREIGN KEY (charity_menu_id)
    REFERENCES charity_menu(id_menu)
); 

