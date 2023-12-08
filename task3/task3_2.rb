class Animal
  def speak
    raise NotImplementedError, 'Subclasses must implement the speak method'
  end
end

class Dog < Animal
  def speak
    'Woof!'
  end
end

class Cat < Animal
  def speak
    'Meow!'
  end
end

def make_animal_speak(animal)
  animal.speak
end

dog = Dog.new
cat = Cat.new

puts make_animal_speak(dog)  # Виведе 'Woof!'
puts make_animal_speak(cat)  # Виведе 'Meow!'
