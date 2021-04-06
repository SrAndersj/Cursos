# -*- coding: utf-8 -*-


def is_prime(number):
    if number <2:
        return False
    elif number ==2:
        return True    
    elif number > 2 and number % 2 == 0:
        False
    else:
        for i in range(3,number):
            if number % i ==0:
                return False
            
    return True
                



def run():
    number =int(raw_input('escribe un numero:  '))
    result = is_prime(number)
    

    if result is True:
        print('es un numero primo')
    else:
        print('no es primo')    
  

if __name__ == '__main__':
    run()
    
