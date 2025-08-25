# python guess game

import random
# the secret number for the computer
secret_number = random.randint(1,20)

# empty list for number of trials
list1 = []

# conditions and loop

while True:
    try:    
        guess = int(input("Guess the correct number between 1 & 20: "))
        list1.append(guess)

        if guess == secret_number:
            print(f"You got the number right in {len(list1)} times")
            break
        elif guess > secret_number:
            print("Your guess is higher")
        else:
            print("Your guess is lower")
    except ValueError:
        print("⚠️ Enter a valid number from 1 - 20 ")

trial = len(list1)
print(f"{secret_number} is the correct number")
print("These are the numbers you tried → ", ", ".join(map(str, list1)))
