# simple calculator program

while True:
    try:
        # Get first number 
        number_1 = int(input("Enter the first number: "))
        # Get operator
        operator = input("Enter the operstion you want to perform i.e * + - /: ")
        # Get second number
        number_2 = int(input("Enter the second number: "))

        # opersations using control floe
        if operator == "+":
            result = number_1 + number_2
        elif operator == "-":
            result = number_1 - number_2
        elif operator == "*":
            result = number_1 * number_2
        elif operator == "/":
            if number_2 == 0:
                print("Division by zero not allowed")
                continue
            result = number_1 / number_2
        else:
            print("Invalid operator, use (+ or - or / or *)")
            continue 
        print(f"Result: {result}")
    except ValueError:
        print("Invalid input. Enter a valid number")
    choice = input("Would you like to perform another calculaton (Yes/No): ").title()
    if choice == "No":
        print("closing calculator")
        break