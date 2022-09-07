require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return if head.nil?
    current = head
    old_tail = self.tail
    old_head = self.head
    while current
      prev = current.prev_node
      current.prev_node = current.next_node
      current.next_node = prev
      current = current.prev_node
    end
    self.tail = old_head
    self.head = old_tail

  end
end
