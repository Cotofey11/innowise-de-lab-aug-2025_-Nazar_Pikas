"""
Дан список чисел nums и целевое число target. Найти индексы двух чисел, сумма
которых равна target.
"""
size: int = int(input("Enter a size of number's list: "))
nums: list = []
for i in range(size):
    if i == 0:
        nums.append(int(input(f"Enter {i+1}-st element: ")))
    elif i == 1:
        nums.append(int(input(f"Enter {i+1}-nd element: ")))
    elif i ==2:
        nums.append(int(input(f"Enter {i+1}-nd element: ")))
    else:
        nums.append(int(input(f"Enter {i+1}-th element: ")))
print(f"Your number's list: {nums}")
target: int = int(input("Enter target value: "))
for i in range(len(nums)):
    for j in range(i+1, len(nums)):
        if (nums[i] + nums[j] == target):
            print(f"Answer:[{i}, {j}] because {nums[i]} + {nums[j]} = {target}");
