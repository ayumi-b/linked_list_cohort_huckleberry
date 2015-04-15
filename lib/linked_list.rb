class LinkedList
attr_reader :first_item

  def initialize
    @first_item
  end

  def push(payload)
    if @first_item.nil?
      lli = LinkedListItem.new(payload)
      @first_item = lli
    end
  end

  def get(index)
    first_item.payload
  end

end
