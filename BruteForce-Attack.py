#!/usr/bin/env python3
import hashlib
import itertools
import string

#hidden password hash
password = "zBlah"
passwordHash = hashlib.sha256(password.encode("utf-8")).hexdigest()

#Cracking the code 

flagg=0
chars=string.ascii_letters + string.digits
for password_length in range(1, 8):
    for guess in itertools.product(chars, repeat=password_length):
        guess = ''.join(guess)
        digest = hashlib.sha256(guess.encode("utf-8")).hexdigest()
        
        if digest == passwordHash:
            print("password is: " + guess)
            flagg=1
            
            break;
    if flagg==1:
        break;
        
if flagg==0:
    print("password is over 8 characters long")

exit