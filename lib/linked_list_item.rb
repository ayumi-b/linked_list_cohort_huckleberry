class LinkedListItem
  include Comparable
  attr_accessor :payload, :next_item, :last

  def initialize(payload)
    @payload = payload
  end

  def === (other)
    #def <=> (other)
    #self.object_id == other.object_id
    self.equal? other
  end

  def next_item=(lli)
    raise ArgumentError if self === lli
    # above works as a guard to check if valid
    @next_item= lli
  end

  def last?
    #if next_item == nil
      #@last = true
    #else
      #@last = false
    #end
    next_item.nil?
  end

  def payload=(new_payload)
    @payload = new_payload
  end

  def <=> other
    if self.payload.class == other.payload.class
      self.payload <=> other.payload
    # compare the size of one over the other?
    else
      self.payload.class.to_s <=> other.payload.class.to_s
    end
  end

  #self.payload.class
  ##assign a number to each class
  #self.payload
  #if self.payload.is_a? Symbol
  #1
  #elsif self.payload.is_a? Fixnum
  #-1
  #else
  #if other.payload.is_a? Symbol
  #-1 
  #else
  #1




end
