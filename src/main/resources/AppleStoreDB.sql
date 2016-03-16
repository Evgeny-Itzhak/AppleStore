CREATE DATABASE apple_store_db;
USE apple_store_db;
GRANT ALL ON apple_store_db.* TO 'root'@'localhost'
IDENTIFIED BY 'root';

CREATE TABLE apple_store_db.`item` (
  `item_id` INT         NOT NULL AUTO_INCREMENT,
  `model`   VARCHAR(20) NOT NULL,
  `memory`  VARCHAR(10) NOT NULL,
  `color`   VARCHAR(10) NOT NULL,
  PRIMARY KEY (`item_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

SELECT user();