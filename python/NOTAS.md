#notas utiles

###para ver el zen de python
```
$ python
```

```python
>>> import this 
```
##union de strings
###error
```python
>>> s='hola'
>>> s[0]='l'
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'str' object does not support item assignment
```
###correcto   , longitud del string y forma fancy de llamarlo
```python
>>> s='hola'
>>>r='l'+ s[1:]
>>> r
'lola'
>>> 
>>> len(r) #longitud del string
4

>>> r[len(r)-1]
'a'

```
##UNICODE

```python
>>> u'niño'
u'ni\xf1o'

```


```python

>>> s='byandersj'

>>> s.upper()
'BYANDERSJ'

>>> s[1:3]
'ya

>>> s[1:6]
'yande'
>>> s[1:6:2]
'yne'


>>> s[::-1]
'jsrednayb'

```

###range

```python
>>> range(5)
[0, 1, 2, 3, 4] 

>>> range(5,40,3)
[5, 8, 11, 14, 17, 20, 23, 26, 29, 32, 35, 38]

>>> for i in range(5):
...     print('hi')
... 
hi
hi
hi
hi
hi
>>> 





```


### for  break

```python

>>> for i in range(30):
...     if i % 3 ==0:
...         print(i)
...     elif i ==22:
...         break
... 
0
3
6
9
12
15
18
21
>>> 




>>> for i in range(30):
...     if i % 3 !=0:
...         continue
...     else:
...         print(i**2)
... 
0
9
36
81
144
225
324
441
576
729













>>> for i in range(30):
...     if i % 3 ==0:
...         print(i**2)
...     elif i ==22:
...         break
... 
0
9
36
81
144
225
324
441



>>> for l in r:
...     print(l)
... 
f
e
r
r
o
c
a
r
r
i
l
>>> 


```


##while loop
<!-- ###se ejecuta hasta que la instruccion se vuelva falsa  , -->


```python

>>> while i < 10:
...     print(i)
...     i+=1
... 
0
1
2
3
4
5
6
7
8
9

>>> 









```


###listas

```python

>>> amigos = list()
>>> amigos.append('diego')
>>> amigos.append('carlos')
>>> amigos.append('fercho')
>>> amigos[0]
'diego'








>>> mi=[]
>>> type(mi)
<type 'list'>
>>> mi.append(1)
>>> mi
[1]
>>> mi2=[2,3,4]
>>> mi3=[mi+mi2]
>>> mi3
[[1, 2, 3, 4]]







>>> mi4=['a']
>>> mi5=mi4*10
>>> mi5
['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a']






>>> u=['lapiz','calculadora','cuaderno']
>>> del u[0]
>>> u
['calculadora', 'cuaderno']







>>> un_string ='cama'
>>> una_lista =list(un_string)
>>> una_lista
['c', 'a', 'm', 'a']









>>> casa ='casa'
>>> type(casa)
<class 'str'>
>>> lista_casa = list(casa)
>>> lista_casa
['c', 'a', 's', 'a']
>>> str_casa = ''.join(lista_casa)
>>> str_casa
'casa'




```