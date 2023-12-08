# Елемент - товар
class Product
  def accept(visitor)
    visitor.visit(self)
  end
end

# Відвідувач - обчислює вартість товару
class PriceVisitor
  def visit(product)
    puts "Calculating price for product"
    # Логіка обчислення вартості товару
  end
end

# Відвідувач - обчислює вартість знижки на товар
class DiscountVisitor
  def visit(product)
    puts "Calculating discount for product"
    # Логіка обчислення знижки на товар
  end
end

# Використання
product = Product.new
price_visitor = PriceVisitor.new
discount_visitor = DiscountVisitor.new

product.accept(price_visitor)
product.accept(discount_visitor)
