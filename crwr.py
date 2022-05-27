from cryptography.fernet import Fernet
import os
import #class key 
path = "./database.log"
message = input()
key = Fernet.generate_key()
fernet = Fernet(key)
encMessage = fernet.encrypt(message.encode())
f = open(path,"a")
f.write(encMessage.decode("utf-8"))
f.write("\n")
f.close

print("original string: ", message)
print("encrypted string: ", encMessage)
decMessage = fernet.decrypt(encMessage).decode()
print("decrypted string: ", decMessage)

