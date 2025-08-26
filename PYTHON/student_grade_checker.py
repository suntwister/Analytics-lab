# Student Grade Checker


while True:
    try:
        student_score = int(input("Enter the student score: "))
        
        if student_score < 0 or student_score > 100:
            print("Invalid number! Score must be between 1-100")
            continue
        
        if student_score >= 70:
            grade = "A"
        elif student_score >= 60:
            grade = "B"
        elif student_score >= 50:
            grade = "C"
        elif student_score >= 40:
            grade = "D"
        else:
            grade = "F"
        print(f"Student grade: {grade}")
        

    except ValueError:
        print("Invalid details")
        
    choice = input("Will you like to compute another grade (Yes/No): ").title()
    if choice == "No":
        print("Thanks for using the app")
        break
