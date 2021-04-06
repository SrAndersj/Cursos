#1/bin/bash




#Retrosynthesis variable section

mol1='*5(=-(-Br)-O-(-Br)-)'

arrowRetro='$\Longrightarrow$'

mol2='*5(-=-O-=)'

mol3=''



#synthesis variable section

arrowSyn='->'
arrowUp='$Br-Br$'
arrowDown=''


export mol1
export arrowRetro
export mol2
export mol3
export arrowSyn
export arrowUp
export arrowDown


touch /tmp/test.txt
touch /tmp/test1.txt

./generateRetroSynthesis.sh
echo ""
./generateSynthesis.sh
echo ""
./generateRetroSynthesis.sh > /tmp/test.txt
echo ""
./generateSynthesis.sh > /tmp/test1.txt

#Blender section Retrosynthesis
echo 'Retrosintesis Blender' 
echo ""
cat /tmp/test.txt | tr -d " \t\n\r"  #para eliminar espacios y saltos de linea
rm /tmp/test.txt

echo ""
echo ""
echo ""
echo "Synthesis Blender"
echo ""
cat /tmp/test1.txt | tr -d " \t\n\r"  #para eliminar espacios y saltos de linea
rm /tmp/test1.txt

echo ""