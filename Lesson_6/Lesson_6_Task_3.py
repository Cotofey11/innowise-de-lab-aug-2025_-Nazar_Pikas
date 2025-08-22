# Описание задания: Напишите программу, которая запрашивает у пользователя
# температуру в градусах Цельсия, переводит её в градусы Фаренгейта и выводит
# результат на экран.

# P.S. по приколу добавил градусы Кельвина

user_temperature = int(input("Enter the temperature in degrees Celsius: "))
print(f"The temperature in degrees Fahrenheit: {user_temperature * 9 / 5 + 32}")
print(f"The temperature in degrees Kelvin: {user_temperature + 273}")
