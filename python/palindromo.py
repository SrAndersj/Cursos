# -*- coding: utf-8 -*-


def palindrome(word):
    reverse_letters = []

    for letter in word:
        reverse_letters.insert(0, letter)
    reversed_word = ''.join(reverse_letters)

    if reversed_word == word:
        return True
    return False


if __name__ == '__main__':
    word = str(raw_input('escribe una palabra:'))

    result = palindrome(word)

    if result is True:

        print('{} si es un palindromo'.format(word))

    else:
        print('{} no es un palindromo'.format(word))
