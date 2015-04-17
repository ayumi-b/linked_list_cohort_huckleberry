require_relative 'linked_list_item'

class LinkedList
  attr_accessor :size, :first_item, :last_item, :to_s

  def initialize(*payload)  #*args is always an array
    @size = 0
    payload.each { |payload| push(payload)}
    #if payload[0]
      #lli = LinkedListItem.new(payload[0])
      #@first_item = lli
      #@current_item = lli
      #while payload[number]
        #llin = LinkedListItem.new(payload[number])
        #@last_item.next_item = llin
        #@last_item = @last_item.next_item
        #@size += 1
  end

  def [](index)
    get(index)
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
  #
  #def to_s
    #string = ""
    #if @size == 0
      #"| |"
    #elsif @size == 1
      #"| #{@first_item.payload} |"
    #else
      #(@size - 1).times do |i|
        #string << "#{get(i)}, "
      #end
      #string << "#{@last_item.payload}"
      #"| #{string} |"
    #end
  #end

  def to_s
    str = "| "
    current_item = @first_item
    until current_item.nil?
      str << current_item.payload
      punctuation = current_item.last? ?  " " : ", "
      str << punctuation
      current_item = current_item.next_item
    end
    str << "|"
    str
  end

end


