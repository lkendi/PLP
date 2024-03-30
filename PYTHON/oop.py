"""Person class module"""
class Person:
    """
    Blueprint of a person

    Attributes:
        name: person's name
        age: person's age
        gender: person's gender

    Methods:
        __init__: constructor
        intro: prints a message introducing the person
    """
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender

    def intro(self):
        print(f"My name is {self.name}, I am {self.age} years old and my gender is {self.gender}.")


person1 = Person("John", 29, "Male")
person1.intro()
