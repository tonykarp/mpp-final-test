class MyClass
  attr_writer :my_variable

  def show_variable
    puts @my_variable
  end
end

obj = MyClass.new
obj.my_variable = 42  # Використання методу, який генерує attr_writer
obj.show_variable     # Виведе 42
