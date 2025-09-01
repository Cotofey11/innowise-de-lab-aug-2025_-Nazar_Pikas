"""
Дано: words = ["hello", "world", "python", "code"]
 1. Создать список длин слов, используя списковое включение
 2. Создать список слов длиннее 4 символов
 3. Создать словарь: {слово: длина} для всех слов
"""
words: list[str] = ["hello", "world", "python", "code"]
words_length: list = [len(word) for word in words]
print(f"{words_length}")
words_length_more_then_4: list = [word for word in words if len(word) > 4]
print(f"{words_length_more_then_4}")
words_and_lengths_dictionary: dict = {word: len(word) for word in words}
print(words_and_lengths_dictionary)
