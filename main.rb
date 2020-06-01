require_relative 'linked_list'

list = LinkedList.new

list.prepend(1)
list.append(2)
list.append(3)
list.append(4)
list.append(5)
list.append(6)
list.append(7)
list.prepend(0)
list.prepend(-1)
list.prepend(-2)

# tests...
puts list.to_s
puts "List size: #{list.size}"
puts "Head node value: #{list.head.value}"
puts "Tail node value: #{list.tail.value}"
puts "Value at index 5: #{list.at(5).value}"
puts "Pop: #{list.pop.value}"
puts "Pop: #{list.pop.value}"
puts list.to_s
puts "Contains 4? #{list.contains?(4)}"
puts "Contains 7? #{list.contains?(7)}"
puts "Index of 5: #{list.find(5)}"
puts "Index of -1: #{list.find(-1)}"
puts "Index of 17: #{list.find(17)}"
puts "Inserting 22 at index 3..."
list.insert_at(22, 3)
puts list.to_s
puts "Inserting 33 at index 6..."
list.insert_at(33, 6)
puts list.to_s
puts "Removing node at index 4..."
puts "Value of deleted node: #{list.remove_at(4).value}"
puts list.to_s
puts "Removing node at index 0..."
puts "Value of deleted node: #{list.remove_at(0).value}"
puts list.to_s
puts "Removing node at index 10..."
puts "Deleted node? #{list.remove_at(10)}"
puts list.to_s
