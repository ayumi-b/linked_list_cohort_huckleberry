class LinkedListItem
  include Comparable
  attr_reader :payload, :next_item, :last

  def initialize(payload)
    @payload = payload
  end

  def === (other)
    self == other
    self.equal? other
  end

  def next_item=(next_item)
    raise ArgumentError if next_item == self
    # above works as a guard to check if valid
    @next_item= next_item
  end

  def last?
    #if next_item == nil
      #@last = true
    #else
      #@last = false
    #end
    next_item.nil?
  end

  def <=> other
    # return (self <=> other) < 1
    self.payload <=> other.payload
    # compare the size of one over the other?
  end


end
