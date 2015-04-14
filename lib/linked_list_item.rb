class LinkedListItem
  include Comparable
  attr_reader :payload, :next_item, :last

  def initialize(payload)
    @payload = payload
    #@next_item = n
  end

  def next_item=(next_item)
    @next_item = next_item
    raise ArgumentError if next_item == self
  end

  def last?
    if next_item == nil
      @last = true
    else
      @last = false
    end
  end
end
