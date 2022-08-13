#!/usr/bin/env python3
import hashlib
import itertools
import string

#password 
#guess_secret="blah"
#password=hashlib.sha256(secret.encode("utf-8")).hexdigest()

def guess_password(real):
    chars = string.ascii_lowercase + string.digits
    attempts = 0
    for password_length in range(1, 15):
        for guess in itertools.product(chars, repeat=password_length):
            attempts += 1
            guess = ''.join(guess)
            if guess == real:
               return 'the password is {}, found in {} guesses.'.format(guess, attempts)
            #print(guess, attempts)

print(guess_password('blahz'))