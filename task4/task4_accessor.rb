class MyClass
  attr_accessor :my_variable

  def show_variable
    puts @my_variable
  end
end

obj = MyClass.new
obj.my_variable = 42  # Запис значення за допомогою методу, який генерує attr_accessor
puts obj.my_variable  # Читання значення за допомогою методу, який генерує attr_accessor
