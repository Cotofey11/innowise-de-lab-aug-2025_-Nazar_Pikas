# Описание задания: Напишите программу, которая работает как простой
# калькулятор. Программа должна запросить у пользователя два числа и
# символ операции (+, -, *, /), а затем выполнить расчёт и вывести результат.

#P.S. Немного доработал

user_first_number = int(input("Enter first number: "))
user_second_number = int(input("Enter second number: "))
user_operation = input("Choose an operator(+, -, *, /, **, %, //): ")

if user_operation == "+":
    print(f"The result of your example: {user_first_number} {user_operation} "
          f"{user_second_number} = {user_first_number + user_second_number}")
elif user_operation == "-":
    print(f"The result of your example: {user_first_number} {user_operation} "
          f"{user_second_number} = {user_first_number - user_second_number}")
elif user_operation == "*":
    print(f"The result of your example: {user_first_number} {user_operation} "
          f"{user_second_number} = {user_first_number * user_second_number}")
elif user_operation == "/":
    if user_second_number != 0:
        print(f"The result of your example: {user_first_number} {user_operation} "
            f"{user_second_number} = {user_first_number / user_second_number}")
    else:
        print(f"Division by zero is not allowed.")
elif user_operation == "**":
    print(f"The result of your example: {user_first_number} {user_operation} "
          f"{user_second_number} = {user_first_number ** user_second_number}")
elif user_operation == "%":
    if user_second_number != 0:
        print(f"The result of your example: {user_first_number} {user_operation} "
            f"{user_second_number} = {user_first_number % user_second_number}")
    else:
        print(f"Division by zero is not allowed.")
elif user_operation == "//":
    if user_second_number != 0:
        print(f"The result of your example: {user_first_number} {user_operation} "
            f"{user_second_number} = {user_first_number // user_second_number}")
    else:
        print(f"Division by zero is not allowed.")
