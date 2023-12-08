void main() {
  Laptop x = new Laptop("mac", "mac1", "16GB");
  Laptop y = new Laptop("hp", "hp1", "32GB");
  Laptop z = new Laptop("Asus", "Asus1", "16GB");
  print(x.id);
  Animal l = new Animal("a");
  l.eye();
  Cat c = new Cat("c","y");
  c.eye();
}

class Laptop {
  String? id;
  String? name;
  String? ram;
  Laptop(this.id, this.name, this.ram);
}

class Animal {
  String? name;
  String? color;
  void eye() {
    print("2 eye");
  }

  Animal(this.name);
}

class Cat extends Animal {
  String? y;
  Cat(this.y,String name) : super(name);
}
