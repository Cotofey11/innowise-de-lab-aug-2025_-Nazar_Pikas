"""
Создайте функцию calculate_average_score(), которая будет вычислять
средний балл.
Функция должна принимать список оценок scores как обязательный аргумент.
Добавьте опциональный булевый параметр ignore_lowest со значением по
умолчанию False.
Если ignore_lowest равен True, функция должна отбросить наименьшую оценку
перед вычислением среднего. Если в списке всего одна оценка, отбрасывать её не
нужно.
Python
Используя цикл, пройдитесь по списку student_data. 2 раза, первый раз
учитывая все оценки, а второй раз отбросив худшие оценки
"""

student_data: list[dict] = [
{'name': 'Алексей', 'scores': [85, 92, 78, 95]},
{'name': 'Марина', 'scores': [65, 70, 58, 82]},
{'name': 'Светлана', 'scores': [98, 95, 100]}
]

def calculate_avarage_score(scores: list, ignore_lowest: bool = False):
    total_score: int = 0
    if ignore_lowest:
        for i in (range(len(scores))):
            total_score += scores[i]
    else:
        scores.remove(min(scores))
        for i in (range(len(scores))):
            total_score += scores[i]
    total_score /= len(scores)
    return total_score

for i in range(len(student_data)):
    print(f"name: {student_data[i].get('name')}, avarage score: {calculate_avarage_score(student_data[i].get('scores'), 
                                                                                         True)}")
for i in range(len(student_data)):
    print(f"name: {student_data[i].get('name')}, avarage score: {calculate_avarage_score(student_data[i].get('scores'))}")
