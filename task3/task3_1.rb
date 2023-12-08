class Animal
  def speak
    "Animal speaks"
  end
end

class Dog < Animal
  def speak
    "Woof!"
  end
end

class Cat < Animal
  def speak
    "Meow!"
  end
end

# Створення об'єктів
animal = Animal.new
dog = Dog.new
cat = Cat.new

# Виклик методу speak для кожного об'єкта
puts animal.speak  # Виведе "Animal speaks"
puts dog.speak     # Виведе "Woof!"
puts cat.speak     # Виведе "Meow!"
