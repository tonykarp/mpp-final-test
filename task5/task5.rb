class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinaryTree
  def initialize
    @root = nil
  end

  def insert(value)
    @root = insert_node(@root, value)
  end

  def inorder_traversal
    result = []
    inorder_traversal_recursive(@root, result)
    result
  end

  private

  def insert_node(node, value)
    return TreeNode.new(value) if node.nil?

    if value < node.value
      node.left = insert_node(node.left, value)
    elsif value > node.value
      node.right = insert_node(node.right, value)
    end

    node
  end

  def inorder_traversal_recursive(node, result)
    return if node.nil?

    inorder_traversal_recursive(node.left, result)
    result << node.value
    inorder_traversal_recursive(node.right, result)
  end
end

# Приклад використання:

tree = BinaryTree.new
tree.insert(8)
tree.insert(3)
tree.insert(10)
tree.insert(1)
tree.insert(6)
tree.insert(14)

puts "Inorder Traversal: #{tree.inorder_traversal.join(' ')}"
