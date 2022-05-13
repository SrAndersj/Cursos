# 1. Introduccion-a-terminal-y-linea-de-comandos-2016-Platzi
Deja tu contribucion si lo deseas Introduccion a terminal y linea de comandos 2016 Platzi

#Editores de consola
### 1.0.1. vim
:wq
### 1.0.2. nano


#consola

## 1.1. busqueda de expresiones regulares
### 1.1.1. grep

```terminal

anders@anders-Byandersj:/tmp$ cat e.txt
esto es un ensayo

tercera linea

hp

anders@anders-Byandersj:/tmp$ grep linea e.txt
tercera linea

```




##remplazar
### 1.1.2. sed

```terminal

anders@anders-Byandersj:/tmp$ sed 's/hp/otro/g' e.txt
esto es un ensayo

tercera linea

otro



anders@anders-Byandersj:/tmp$ cat e.txt
esto es un ensayo

tercera linea

hp



```

### 1.1.3. awk

```terminal


anders@anders-Byandersj:/tmp$ cat a.txt
df,adsf,;asdfwww
werrt,rtg,'wertw;lret

anders@anders-Byandersj:/tmp$ awk -F ';' '{print $1}' a.txt
df,adsf,
werrt,rtg,'wertw

anders@anders-Byandersj:/tmp$ awk -F ';' '{print $2}' a.txt
asdfwww
lret

```
#  2. comunicacion entre procesos

```terminal

anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ ls > lista.txt
anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ cat lista.txt
calculos.txt
indexComandos.html
lista.txt
README.md
uno.png


#agregar a un archivo existente

anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ nano lista.txt
anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ ls -l >> lista.txt
anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ cat lista.txt
calculos.txt
indexComandos.html
lista.txt
README.md
uno.png


despues de esto deberia ingresar lo otro
total 980
-rw-rw-r-- 1 anders anders     11 jun 23 16:01 calculos.txt
-rw-rw-r-- 1 anders anders   6142 jun 23 16:01 indexComandos.html
-rw-rw-r-- 1 anders anders    104 jun 24 17:04 lista.txt
-rw-rw-r-- 1 anders anders   1262 jun 24 17:02 README.md
-rw-rw-r-- 1 anders anders 979176 jun 23 16:01 uno.png



```


#tuberias

```terminal
anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ ls -l | more
total 980
-rw-rw-r-- 1 anders anders     11 jun 23 16:01 calculos.txt
-rw-rw-r-- 1 anders anders   6142 jun 23 16:01 indexComandos.html
-rw-rw-r-- 1 anders anders    409 jun 24 17:04 lista.txt
-rw-rw-r-- 1 anders anders   1998 jun 24 17:24 README.md
-rw-rw-r-- 1 anders anders 979176 jun 23 16:01 uno.png




#lista.txt tiene 14 lineas

nders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ cat lista.txt |wc
     14      59     409

anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ cat lista.txt |wc -l
     14



```



```terminal

lorem -p 3 > lorem.txt

anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ cat lorem.txt | wc -l
4


head -n 2 lorem.txt >mitadhead
 tail -n 2 lorem.txt >mitadtail

```

# background Forentground

# simbolo ampersan  &
## el simbolo se coloca al final
### es para  que el proceso se ejecute y poder seguir controlando la consola (osea queda en segundo plano   background   y para traerlo al forentground uso fg  )





# Procesos en ejecucion

## ps
```
ps
ps ax

ps ax | grep init

 kill -9  6426


```


## top





# Permisos

```terminal
ls -l


drwxrwxr-x
-rw-rw-r--

dueno grupo otros
x es permiso de ejecucion
d indica es directorio
l es un link

```

## alterar Permisos
### notaacion textual

```
chmod

chown     #cambia el propietario

chgrp   #cambia el grupo de usuarios


chmod o-w

o usuario
- quitar un permiso

chmod +x #le da permiso a los tres de ejecutar


```
### notacion de digitos

```terminal

chmod 760 lorem.txt


anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ chown www-data lorem.txt
chown: cambiando el propietario de 'lorem.txt': Operación no permitida

```


# paquetes binarios

```terminal
apt

zypper

rpm



```

## navegador linea de indexComandos

```terminal

sudo apt install lynx


lynx platzi.com

```

# paquetes de lenguajes

```terminal

pip

composer

npm



```


```terminal
sudo apt install pandas


```

# otros manejadores de paquetes

```terminal

conda

homebrew
```


# herramientas de compresion y combinacion de archivos


```terminal

anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ ls lorem.txt -lh
-rwxrw---- 1 anders anders 536 jun 24 18:22 lorem.txt

anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ gzip lorem.txt
anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ ls lorem.txt.gz -lh
-rwxrw---- 1 anders anders 312 jun 24 18:22 lorem.txt.gz


gzip lorem.txt.gz -d   #descomprimir

```
##agrupar archibos

```terminal

ls terminal/ -l

anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta$ tar cf backup.tar terminal/*

mv backup.tar ~/


tar xf backup.tar




tar czf term.tgz  terminal/*

 mv term.tgz /tmp/

 anders@anders-Byandersj:/tmp$ tar xzf term.tgz


```



# herramientas de busqueda


```terminal  
locate   # para usarlo hay que mantener actualizada la base de datos con sudo updatedb

whereis  #ubivar archivos binarios osea comandos

whereis echo

find  #busca dentro de un arbol de directorio usando criterios

find . -user anders -perm 644


find . -type f -mtime +1


```


# herramientas para interactuar a traves de http


```terminal

curl  #hacer pedidos crudos a servidores http


curl https://platzi.com

curl -v  https://platzi.com |more

curl -v  https://platzi.com > /dev/null   #para ver solo los encabezados y redireccionamos a un archivo de consola el llamado agugero negro

wget  #realiza descargaas a servidores


# vamos a descargar un interprete de php
wget https://www.php.net/distributions/php-7.3.10.tar.bz2

ls php-7.3.10.tar.bz2 -lh
```



# Acceso seguro a otras computadoras
##ejecutar comandos de forma remota

```terminal
parametros usuario  host

ssh

cat .ssh/config


# servidor de correo

instala postfix utilizando el comando: sudo DEBIAN_PRIORITY=low apt install postfix


Instala las utilidades de correo con el comando:

sudo apt install mailutils

Puedes probarlo usando el comando:

echo "hola" | mail -s "test" byandersj@gmail.com


```

# variables de entorno

```terminal

anders@anders-Byandersj:~$ echo $PATH
/home/anders/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

anders@anders-Byandersj:~$ ls /usr/sbin -l | more



```

## asignacion global

```terminal

anders@anders-Byandersj:~$ export MI=ByAndersj
anders@anders-Byandersj:~$ echo $MI
ByAndersj



anders@anders-Byandersj:~$ MI_VAR=/HOME php example.php
  # difinir el valor solamente para el proximo comando que voy a ejecutar



```

# como y para que dejar tareas programadas

```terminal
at

cron 

```


```terminal

date 

anders@anders-Byandersj:~/Escritorio/CursosUnaSolaCarpeta/terminal$ at now +2 minutes
warning: commands will be executed using /bin/sh
at> echo "Hola jefe" > /tmp/hola.txt    #para terminar se usa ctrl d
at> 
at> <EOT>
job 1 at Thu Jul  2 12:19:00 2020

```


```terminal

crontab -e    #ver las tareas programadas


# m h  dom mon dow   command
 00 14 *   *   *      echo "Hola jefe" > hola2.txt


```