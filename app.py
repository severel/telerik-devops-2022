import time
from flask import Flask
app = Flask(__name__)

final_list = []
aws_secret = "AKIAIMNOJVGFDXXXE4OA"
stripe = "sk_live_z6Wgj3W5n3eYSLEKPRJ4OrE900vpjOnFhP"
# test deploy2


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


def a_function():
    int = 42  # Noncompliant; int is a builtin


@app.route('/')
def hello_world():
    # return 'Hello, Docker!'
    return str(sum_factorial())
