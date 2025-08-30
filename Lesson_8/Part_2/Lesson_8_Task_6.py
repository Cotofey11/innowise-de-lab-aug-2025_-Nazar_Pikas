"""
Создайте функцию без параметров show_current_time() — печатает
текущие дату и время (используйте модуль datetime).
"""
from datetime import datetime

def show_current_time():
    return datetime.now()

print(show_current_time())
