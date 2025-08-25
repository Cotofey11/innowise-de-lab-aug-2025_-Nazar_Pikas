# Описание задания: Напишите программу, которая запрашивает у
# пользователя целое число и определяет, является ли оно чётным или
# нечётным.

user_number = int(input("Enter your number for checking: "))
if user_number % 2 == 0:
    print("The number is even")
else:
    print("The number isn't even")
