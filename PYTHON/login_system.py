# login system
# declaring user details
username = "admin"
password = "12345"

# Method 1 - using while loop
attempts = 0
max_attempt = 3

while attempts < max_attempt:
    # get user details
    user = input("Enter your username: ")
    user_password = input("Enter your password: ")
    
    # conditions for login
    if user == username and user_password == password:
        print("Welcome, Access Granted")
        break
    else:
        attempts += 1
        print(f"Invalid username or password, you have {max_attempt - attempts} attempts left ")
       
if attempts == max_attempt:
    print("Access denied, too many attempts")

# # Method 2 - using for loop
# for attempts in range(3):
#     user = input("Enter your username: ")
#     user_password = input("Enter your password: ")

#     if user == username and user_password == password:
#         print("Welcome, Access Granted")
#         break
#     else:
#         print(f"Invalid username or password, you have {2 - attempts} attempts left ")
# else:
#     print("Access denied, too many attempts")