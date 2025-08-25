# Задание: У вас есть список продуктов, которые нужно купить.Напишите программу,
# которая выводит этот список в виде пронумерованного перечня.
shopping_list: list[str] = ["milk", "bread", "eggs", "butter", "apples"]
print("Shopping list:")
for index in range(len(shopping_list)):
    print(f"{index + 1}. {shopping_list[index]}")
