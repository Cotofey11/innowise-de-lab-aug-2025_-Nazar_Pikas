# Задание: Напишите простую игру. Программа "загадывает" число от 1 до 10.
# Пользователь должен угадать это число. Цикл while должен продолжаться до тех пор,
# пока пользователь не введет правильный ответ.
# Тупо копипаст 4-ого задания прошлого урока(Lesson_6_Task_4)
from random import randint

user_number: int = int(input("Enter your number: "))
secret_number: int = randint(1, 10)
while user_number != secret_number:
    if user_number > secret_number:
        print("Your number is larger then mine")
    elif user_number < secret_number:
        print("Your number is less then mine")
    user_number = int(input("Enter your number: "))
print("My Congratulations! You won!!")
