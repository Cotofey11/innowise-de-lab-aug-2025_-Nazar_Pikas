"""
Исходный список: fruits = ["apple", "banana"]
Выполните следующие операции по порядку:
 1. Добавьте "orange" в конец списка
 2. Вставьте "grape" по индексу 1
 3. Удалите "banana"
 4. Отсортируйте список
 5. Переверните список
Выводите список на печать после каждого шага
"""
fruits: list[str] = ["apple", "banana"]
fruits.append("orange")
print(f"fruits with \"orange\": {fruits}")
fruits.insert(1, "grape")
print(f"fruits with \"grape\": {fruits}")
fruits.remove("banana")
print(f"fruits without \"banana\": {fruits}")
fruits.sort()
print(f"sorted \"fruits\": {fruits}")
fruits.reverse()
print(f"reversed \"fruits\": {fruits}")
