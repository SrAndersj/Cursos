# -*- coding: utf-8 -*-
import random


def run():
    number_found =False
    random_number = random.randint(0,20)


    while not number_found:
        number = int(raw_input('Intenta un numero'))

        if number ==random_number:
            print('felicidades')
            number_found=True
        
        elif number > random_number :
            print('el mumero es mas pequeno')
        else:
            print('el numero es mas grande')
            
            


  

if __name__ == '__main__':
    run()
    