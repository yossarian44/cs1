
# assignment commands

x = 4
y = 20

# conditions

if (True):
    x = 2
    z = 10
else:
    x = 21
    z = 44

if (x > 0 or y == x):
    x = 0
    z = 99
else:
    x =1
    z = False

# iteration

times = 10

while (times > 0):
    print("Hello")
    times = (times - 1)

# procedures

def fun(a, b, c, x):
    result = a * (x * x) + b * x + c
    return result
