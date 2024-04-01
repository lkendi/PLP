import 'dart:io';

abstract class Animal {
  String name;
  int age;

  Animal(this.name, this.age);
  void make_sound();
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);

  @override
  void make_sound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  @override
  void make_sound() {
    print("Meow!");
  }
}

void main() {
  var file = File('animal.txt');
  var lines = file.readAsLinesSync();

  for (var line in lines) {
    var data = line.split(',');
    var dog = Dog(data[0], int.parse(data[1]));
    print('Name: ${dog.name}c, Age:${dog.age}');
    dog.make_sound();
  }
}
