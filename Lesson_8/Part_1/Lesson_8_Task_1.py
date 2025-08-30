"""
Дана строка: "Python Programming"
Напишите код, который:
 1. Выводит длину строки
 2. Выводит символ по индексу 7
 3. Выводит последние 3 символа
 4. Проверяет, содержится ли в строке подстрока "gram"
"""
base_string: str = "Python Programming"
print(f"String's length: {len(base_string)}")
print(f"7-th element of string: {base_string[7]}")
#Честно, не знал как выводить их правильнее(как base_string[-3:]) или же так, поэтому оставил сложный вариант
print(f"Last 3 elements of string: {base_string[-3], base_string[-2], base_string[-1]}")
print(f"Does the substring 'gram' exist in the string? {"gram" in base_string}")
