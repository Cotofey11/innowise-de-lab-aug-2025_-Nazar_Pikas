# Задание: Напишите программу, которая имитирует обратный отсчет перед запуском
# ракеты. Программа должна запросить у пользователя число (например, 5),
# а затем вывести отсчет от этого числа до 1, после чего напечатать "Go!".
user_number : int = int(input("Enter the number of seconds for the countdown: "))
while user_number <= 0:
        user_number : int = int(input("Incorrect value! Please, Try Again!"
                                      " Enter the number of seconds for the countdown: "))
while user_number > 0:
    print(f"{user_number}...")
    user_number -= 1
print("Go!!!!!!!")
