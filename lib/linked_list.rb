require_relative 'linked_list_item'

class LinkedList
  attr_reader :size, :last, :to_s

  def initialize
    @size = 0
    @last
  end

  def get(index)
    raise IndexError if index < 0 || index > @size

    if index == 0
      @first_item.payload
    else
      current_node = @first_item
      index.times do
        current_node = current_node.next_item
      end
      current_node.payload
    end
  end

  def push(payload)
    if @first_item.nil?
      lli = LinkedListItem.new(payload)
      @first_item = lli
      @last = lli
    else
      @last.next_item = LinkedListItem.new(payload)
      @last = @last.next_item
    end
      @size+= 1
  end

  def last
    if ! @last.nil?
      @last.payload.to_s
    end

  end

  def to_s
    "| "+ @payload.to_s + "|" 
  end
end



