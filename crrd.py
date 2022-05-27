from cryptography.fernet import Fernet
key = Fernet.generate_key()
fernet = Fernet(key)

with open("./database.log","r") as file:
    lastline = file.readline()
byline = bytes(lastline,'UTF-8')
decMessage = fernet.decrypt(byline).decode()

