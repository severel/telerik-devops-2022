import time
from flask import Flask
app = Flask(__name__)

final_list = []


def factorial(n):
    # time.sleep(.1)
    factorial = 1
    for i in range(1, n+1):
        factorial = factorial * i
    return factorial


def sum_factorial():
    for i in range(5):
        final_list.append(factorial(i))
    result = sum(final_list)
    # print("Final SUM = {}".format(result))
    return result


@app.route('/')
def hello_world():
    # return 'Hello, Docker!'
    return str(sum_factorial())
