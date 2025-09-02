# simple calculator program

def calculate(num1, num2, operator):
    if operator == "+":
        return num1 + num2
    elif operator == "-":
        return num1 - num2
    elif operator == "*":
        return num1 * num2
    elif operator == "/":
        if num2 != 0:
            return num1 / num2
        return "Division by zero not valid"
    else:
        return "Invalid Operator selection"

def main():
    while True:
        try:
            # Get first number 
            num1 = float(input("Enter the first number: "))
            # Get operator
            operator = input("Enter the operstion you want to perform i.e * + - /: ")
            # Get second number
            num2 = float(input("Enter the second number: "))

            result = calculate(num1,num2,operator)
            print(f"Result: {result}")
        except ValueError:
            print("Invalid input. Please enter numbers only.")

        # program exit
        choice = input("Would you like to perform another calculaton (yes/no): ").strip().lower()
        if choice == "no":
            print("closing calculator")
            break

if __name__ == "__main__":
    main()