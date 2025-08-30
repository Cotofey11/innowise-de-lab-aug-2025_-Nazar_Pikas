"""
Дано: words = ["hello", "world", "python", "code"]
 1. Создать список длин слов, используя списковое включение
 2. Создать список слов длиннее 4 символов
 3. Создать словарь: {слово: длина} для всех слов
"""
words: list[str] = ["hello", "world", "python", "code"]
words_length: list = []
for i in range(len(words)):
    words_length.append(len(words[i]))
print(f"{words_length}")
words_length_more_then_4: list = []
for i in range(len(words_length)):
    if words_length[i] > 4:
        words_length_more_then_4.append(words_length[i])
print(f"{words_length_more_then_4}")
words_and_lengths_dictionary: dict = {
    "hello": len("hello"),
    "world": len("world"),
    "python": len("python"),
    "code": len("code")
}
print(words_and_lengths_dictionary)
