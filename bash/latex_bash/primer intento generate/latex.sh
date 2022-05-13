#!/bin/bash
# script for generate molecules with chemfig ,  by :SrAndersj


# Two molecules , simbole add , arrow , arrowUpSpace , molecule 

# moleculeOne=CH_3CH_2OH
# moleculeTwo='CH_3-*6(-=-(-S(=[6]O)(=[2]O)-Cl)=-=)'

# arrowUp=pyridine

# moleculeNextArrow='CH_3-*6(-=-(-S(=[6]O)(=[2]O)-OCH_2CH_3)=-=)'


moleculeOne='%1 -[:30]%2 -[:90]%3 -[:150]%4 -[:210]%5 -[:270]%6 ( -[:330]%->1 )'
moleculeTwo=''



arrowUp=' $[1]NaOCH_3 ,CH_3OH$'
arrowDown='$[2]H_3O^+$'

moleculeNextArrow=''


symboladd=0   # cero no sum molecule , one  sum molecule

arrowType=1   # 0 retrosintesis 1 -> 2 <=>


export moleculeOne
export moleculeTwo
export arrowUp
export moleculeNextArrow
export symboladd
export arrowType
export arrowDown

./1_generate.sh






