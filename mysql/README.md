
sudo apt install mysql-server

sudo mysql


otra opcion 

https://platzi.com/clases/1272-sql-mysql/33450-instalacion-local-de-un-rdbms-ubuntu/

# control l   para borrar 

dentro de mysql

```terminal


Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> \g
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.66 sec)

```


```terminal

mysql> CREATE DATABASE db_test;


mysql> use db_test;
Database changed





mysql>  show tables;


para saber en que base de datos estoy

mysql> select database();

```

# empezamos 
##### dentro de mysql

```terminal

CREATE database test;




```





```terminal
mysql> CREATE DATABASE IF NOT EXISTS test;
Query OK, 1 row affected, 1 warning (0.08 sec)

mysql> SHOW warnings;
+-------+------+-----------------------------------------------+
| Level | Code | Message                                       |
+-------+------+-----------------------------------------------+
| Note  | 1007 | Can't create database 'test'; database exists |
+-------+------+-----------------------------------------------+
1 row in set (0.00 sec)




use test;




```



```terminal

select * from books;


```
# Borrar

```terminal

drop table authors;

```

# mostrar contenido tabla
```terminal
describe authors;
desc authors;
show full columns from authors;



```



```terminal

ON DUPLICATE  KEY UPDATE --

```


```terminal
select * from authors where name ='juan rulfo';


```


```terminal
select * from books \G;

```


```terminal

 sudo mysql < all.sql 
sudo mysql

show databases;


```


```terminal
 mysql -u root -p -D prueba platzi < data.sql   -- esto lo uso si tengo un archivo que inicia con insert para que el programa entienda que quiero que lo mande a esa base de datos

```



```terminal


```


```terminal


```


```terminal


```


```terminal


```


```terminal


```
