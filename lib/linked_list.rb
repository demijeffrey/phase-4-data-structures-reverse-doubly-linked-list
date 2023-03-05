require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    # your code here
    return if head.nil?
    curr = head
    tail_node = head
    prev_node = nil
    while curr != nil
      next_node = curr.next_node
      curr.next_node = prev_node
      curr.prev_node = next_node
      prev_node = curr
      curr = next_node
    end
    @head = prev_node
    @tail = tail_node
  end
end
