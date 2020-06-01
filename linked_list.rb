require_relative 'node'

class LinkedList
  attr_reader :head, :tail

  def empty?
    @head.nil?
  end

  def append(value)
    new_node = Node.new(value)
    if empty?
      @head = new_node
    else
      @tail.next = new_node
    end
    @tail = new_node
  end

  def prepend(value)
    new_node = Node.new(value)
    if empty?
      @tail = new_node
    else
      new_node.next = @head
    end
    @head = new_node
  end

  def size
    current = @head
    i = 0
    until current.nil?
      i += 1
      current = current.next
    end
    i
  end

  def at(index)
    current = @head
    index.times do
      return nil if current.nil?
      current = current.next
    end
    current
  end

  def pop
    return nil if empty?
    current = @head
    until current.next.nil?
      previous = current
      current = current.next
    end
    previous.next = nil
    @tail = previous
    current
  end

  def contains?(value)
    return false if empty?
    current = @head
    until current.next.nil?
      return true if current.value == value
      current = current.next
    end
    false
  end

  def find(value)
    current = @head
    i = 0
    until current.nil?
      return i if current.value == value
      i += 1
      current = current.next
    end
    nil
  end

  def to_s
    return if empty?
    current = @head
    until current.nil?
      print "( #{current.value} ) --> "
      current = current.next
    end
    print "nil"
  end

  def insert_at(value, index)
    raise "Invalid index: #{index}" if index > size || index.negative?
    new_node = Node.new(value)
    if index.zero?
      new_node.next = @head
      @head = new_node
    else
      previous = @head
      current = @head.next
      (1...index).each do
        previous = current
        current = current.next
      end
      new_node.next = current
      previous.next = new_node
    end
  end

  # returns deleted node, or false if no node exists at index
  def remove_at(index)
    return false if index > size - 1 || index.negative?
    if index.zero?
      temp = @head
      @head = @head.next
      temp
    else
      previous = @head
      current = @head.next
      (1...index).each do
        previous = current
        current = current.next
      end
      previous.next = current.next
      current
    end
  end
end
