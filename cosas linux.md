# ver parciciones y usb

```
sudo fdisk -l

este tambien
lsblk

```

```terminal
for i in {1..10};do touch $i.txt;done;

 for i in *.txt ;do echo $i.txt;done;

for i in *.txt ;do newfile=${i/.txt/.zip};echo $newfile;done;


for f in *.txt;do 
> mv -- "$f" "${f%.txt}.php"
> done



```