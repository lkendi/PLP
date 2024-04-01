try:
    with open("my_file.txt", 'w') as file:
        file.write("This is the first line\n")
        file.write("Line 2 contains some numbers: 12345\n")
        file.write("And this is the third line\n")
        print("File created successfully!")
except FileNotFoundError:
        print("Error: 'my_file.txt' does not exist")

try:
    with open("my_file.txt", 'r') as file:
        print("----------------File Contents--------------")
        print(file.read())

except FileNotFoundError:
        print("Error: 'my_file.txt' does not exist")

try:
    with open("my_file.txt", 'a') as file:
        file.write("\nThis is an appended line.\n")
        file.write("Another appended line with numbers: 98765\n")
        file.write("Appending a third line.\n")
        print("Lines appended sccessfully!")

except FileNotFoundError:
        print("Error: 'my_file.txt' does not exist")

finally:
     print("Execution completed")
