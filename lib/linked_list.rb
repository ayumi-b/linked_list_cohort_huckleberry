require_relative 'linked_list_item'

class LinkedList
  attr_accessor :size, :last_item, :to_s, :ll

  def initialize
    @size = 0
    @last_item
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
    new_item = LinkedListItem.new(payload)
    if @first_item.nil?
      @first_item = new_item
    else
      #last_item = @first_item
      #until last_item.last?
      @last_item.next_item = new_item
    end
    @last_item = new_item
    @size+= 1
  end
  

  def last
    unless @last_item.nil?
      @last_item.payload
    end

  end

  def to_s
    string = ""
    if @size == 0
      "| |"
    elsif @size == 1
      "| #{@first_item.payload} |"
    else
      (@size - 1).times do |i|
        string << "#{get(i)}, "
      end
      string << "#{@last_item.payload}"
      "| #{string} |"
  end

  end
end


