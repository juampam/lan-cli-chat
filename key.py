import random
import string
import os

def get_random_string(length):
    path = "./.k"
    # choose from all lowercase letter
    letters = string.ascii_lowercase
    result_str = ''.join(random.choice(letters) for i in range(length))
    print(result_str)
    file = open(path,"w")
    file.write(result_str)
    file.close()
get_random_string(32)
