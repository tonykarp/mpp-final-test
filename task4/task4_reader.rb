class MyClass
  attr_reader :my_variable

  def initialize(value)
    @my_variable = value
  end
end

obj = MyClass.new(42)
puts obj.my_variable  
# Звернення до значення через метод, який генерує attr_reader
