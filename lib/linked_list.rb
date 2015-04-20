require_relative 'linked_list_item'

class LinkedList
  attr_accessor :size, :first_item, :last, :payload

  def initialize(*payload)  #*args is always an array
    @size = 0
      payload.each {|payload| push(payload)}
  end

  def get(index)
  raise IndexError if index < 0 || index > @size
    if index == 0
    @first_item.payload
  else
    current_node = @first_item
    index.times { current_node = current_node.next_item }
    current_node.payload
    end
  end

  def index(payload)
  end

  #def get(index)
    #raise IndexError if index < 0 || index > @size
    #if index == 0
      ##@first_item.payload
      #@first_item = current_node.next_item
    #elsif index > 0
     #(index - 1).times {current_node = current_node.next_item }
     #current_node.next_item = current_node.next_item.next_item
    #end
    #@size -= 1
      ##current_node = @first_item
      ##index.times do
        ##current_node = current_node.next_item
        ##raise IndexError if current_node.nil?
      ##end
      ##current_node.payload
    ##end
    ##raise IndexError if @first_item.nil?
    ##current_node = @first_item
  #end

  def push(payload)
    new_item = LinkedListItem.new(payload)
    if @first_item.nil?
      @first_item = new_item
    else
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

  def [](payload)
    get(payload)
  end

  def []=(index, payload)
    get(index).replace payload
  end
  #def []=(index, data)
      #current_node = @first_item
      #index.times { current_node=current_node.next_item }
      #current_node = data.to_s
  #end

  #def []=(index, payload)
    #tempVal = @first_item
    #index.times do
      #tempVal = tempVal.next_item
    #end
    #tempVal.payload = payload
  #end
  #
  def delete(index)
    raise IndexError if @first_item.nil?
    current_node = @first_item
    if index > 0
     (index - 1).times {current_node = current_node.next_item }
      current_node.next_item = current_node.next_item.next_item
    elsif index <= 0
      @first_item = current_node.next_item
    end
    @size -= 1
  end

  #def delete(index)
    #raise IndexError if @first_item.nil?
    #if index == 0
      #@first_item = @first_item.next_item
    #end
    #@size -= 1   
  #end
end
