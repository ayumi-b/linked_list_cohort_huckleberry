require_relative 'linked_list_item'

class LinkedList
  attr_reader :size

  def initialize
    @size = 0
  end

  def get(nth_item)
    raise IndexError if nth_item < 0 || nth_item > @size 

    if nth_item == 0
      @first_item.payload
    else
      count= 0
      current_node = @first_item
      while count < nth_item
        current_node = current_node.next_item
        count = count + 1
      end
      current_node.payload
    end
  end

  def push(item)
    if @first_item.nil?
      @first_item = LinkedListItem.new(item)
      @last_item = @first_item
    else
      @last_item.next_item = LinkedListItem.new(item)
      @last_item = @last_item.next_item
    end
      @size+= 1
  end
end

#attr_reader :first_item

  #def initialize
    #@first_item
  #end

  #def push(item)
    #if @first_item.nil?
      #@first_item = LinkedListItem.new(item)
      ##@first_item = lli
    #else
      #@first_time.next_item = LinkedListItem.new(item)
    #end
  #end

  #def get(nth_item)
    ##first_item.payload
    #if nth_item == 0
      #@first_item.payload
    #else
      #count = 0
      #current_node = @first_item
      #while count < nth_item
        #current_node = current.node.next_item
        #count = count + 1
      #end
      #current_node.payload
    #end
  #end

#end
