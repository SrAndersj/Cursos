CREATE TABLE IF NOT EXISTS books (
       book_id INTEGER PRIMARY KEY  AUTO_INCREMENT ,
       author_id INTEGER  UNSIGNED ,
       title VARCHAR(100) NOT NULL, -- NUMERO DE CARACTERES 
       `year`  INTEGER  UNSIGNED NOT NULL DEFAULT 1900, -- BACANO PONERLE POR DEFAULT UN VALOR
       `language` VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'ISO 639-1 Language',
       cover_url VARCHAR (500),
       price DOUBLE(7,2) NOT NULL DEFAULT 27000.00 , -- 5 caracteres y reserve 2 para decimal 
       sellable TINYINT (1) DEFAULT (1),
       copies INTEGER NOT NULL  DEFAULT 1,
       description TEXT     
);

CREATE TABLE  IF NOT  EXISTS authors (
       author_id INTEGER  UNSIGNED  PRIMARY  KEY  AUTO_INCREMENT ,
       name VARCHAR (100) NOT NULL ,
       nationality VARCHAR (3)
);


CREATE TABLE IF NOT EXISTS clients(
       client_id INTEGER UNSIGNED PRIMARY KEY  AUTO_INCREMENT ,
       `name` VARCHAR (50) NOT NULL ,
       email VARCHAR (50) NOT NULL UNIQUE ,
       birthdate DATETIME,
       gender ENUM('M','F','ND') NOT NULL,
       active TINYINT(1) NOT NULL DEFAULT 1,
       created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,  
       updated_at TIMESTAMP NOT NULL DEFAULT  CURRENT_TIMESTAMP 
          ON UPDATE CURRENT_TIMESTAMP 

);


CREATE TABLE IF NOT EXISTS operations(
       operation_id INTEGER UNSIGNED  PRIMARY  KEY AUTO_INCREMENT ,
       book_id INTEGER UNSIGNED  PRIMARY  KEY AUTO_INCREMENT ,
       client_id
       `type` 
       created_at
       updated_at
       finished  TINYINT (1) NOT  NULL 
);


INSERT INTO authors(author_id,name,nationality)
VALUES('','JUAN RULFO','MEX'); -- no me funciono 


INSERT INTO authors(name,nationality)
VALUES('Gabriel garcia marques','COL'); --si funciono   -- miramos con select * from authors;




INSERT INTO authors
VALUES('','Juan gabriel vasquez','COL'); -- no me funciono





INSERT INTO authors(name,nationality)
VALUES('juan rulfo','MEX'),
('JUAN GABREIL VASQUES','COL'); 



INSERT INTO books(title,author_id) VALUES('el laberinto',2);

INSERT INTO books(title,author_id,`year`)
VALUES('vuelta al laberinto de la asdlj',
(SELECT author_id FROM authors WHERE name = 'juan rulfo'
LIMIT 1
),1960
);



