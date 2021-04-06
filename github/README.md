# primer-archivo-en-git-hub-
del curso platzi con freddy

### Editor.md Open Source

[Editormd](https://pandao.github.io/editor.md/en.html)


# install

sudo apt install git
```console
sudo apt install git

git config --global user.email @email

git config --global user.name nameUser

git config -l

git config --list --show-origin Ver dónde están las configuraciones guardadas
```

# creator ssh

```console
ssh-keygen -t rsa -b 4096 -C "@email" 

```

# view if ssh is on

```console
eval $(ssh-agent -s)
```

# add ssh 

```console
ssh-add ~/.ssh/id_rsa
```

agregar llave publica a github







# add https  and ssh github


```
git remote add  origin https://github.com/ByAndersj/Cursos.git

git remote set-url origin git@github.com:ByAndersj/Cursos.git


```


















```

ping google.com  
```


#git clean

```terminal
git clean --dry-run  #simular lo que se va a borrar sin borrarlo

git clean -f  #nota si un archivo esta en gitignore sera imposible que este comando lo borre

```







```
git diff
```




#git cherry-pick

##a medida que avanza en una rama y se necesitan esos abances en el master



```terminal

git cherry-pick codigoDelCommit




```

#git commit amend
##los cambios los va a colocar en el ultimo commit hecho
```
git commit --amend  

```
#git reflog  

##se ve todo es mas poderoso que el log , incluso muestra los commit que se matan

luego cojo el codigo del commit al que volver y 

## git reset --SOFT              #MANTIENE lo que hay en staging 
## git reset --HARD


```
git reset --HARD codigo del commit

```



#para buscar una palabra dentro del proyecto


```
git grep color

git grep -n color    #dice la linea

git grep -c color     #contar cuantas veces usar la palabra


git grep -c "<p>"

git log palabra     #y si lo que quiero busgar es en los commit

```


#comandos y recursos colaborativos

ver quin hizo comits  
```
git shortlog

git shortlog -sn

git shortlog -sn --all

git shortlog -sn --all --no-merges


```




#git stats

##para crearlo
```

```


# git blame nombreDelArchivo
# git -c blame nombreDelArchivo
 
## para ver quien hizo que en el archibo
