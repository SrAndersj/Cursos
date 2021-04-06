# -*- coding: utf-8 -*-


def foreign_exchange_calculator(ammount):
    mex_to_col_rate =145.97

    return mex_to_col_rate*ammount
    

def run():
    print('C A L C U L A D O R A')
    print('')



    ammount = float(raw_input('ingresa cantidad a convertir'))


    result = foreign_exchange_calculator(ammount)

    print('${}pesos mexicanos son ${} pesos colombianos'.format(ammount,result))

    print('')






if __name__ == '__main__':
    run()
    