# Описание задания: Напишите программу, которая «загадывает»
# случайное целое число в диапазоне от 1 до 5. Пользователь пытается его
# отгадать. Программа должна сравнить число пользователя с загаданным
# и вывести одно из трех сообщений:
# ● «Ты угадал!», если числа совпали.
# ● «Слишком много!», если число пользователя больше загаданного.
# ● «Слишком мало!», если число пользователя меньше загаданного.

# P.S. Доработал игру, чтоб веселее было(как тренировка бинарного поиска)

from random import randint

user_number = int(input("Enter your number: "))
random_number = randint(1, 64)
while user_number != random_number:
    if user_number > random_number:
        print("Your number is larger then mine")
        user_number = int(input("Enter your number: "))
    elif user_number < random_number:
        print("Your number is less then mine")
        user_number = int(input("Enter your number: "))
print("My Congratulations! You won!!")
