from cryptography.fernet import Fernet
class Exportkey():
    key = Fernet.generate_key()
    cryp  = Fernet(key)
    export cryp
