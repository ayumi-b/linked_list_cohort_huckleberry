#!/usr/bin/env ruby

require_relative 'lib/linked_list'

payloads = ARGV # ARGV holds the command line arguments that were passed in

# Now, build a LinkedList
ll = LinkedList.new

arrow = "* -> "
pointer = " -> "
endPoint = " -> nil"


if
  payloads.size > 0
  itemize = payloads.map { |payloads| payloads.inspect }
  print "* -> " + itemize.join(pointer) + " -> nil"
else
  print "* -> nil"
end



# And, populate it
#
# <YOUR CODE GOES HERE>

# Then, print it out
#
# <YOUR CODE GOES HERE>
#print arrow + payloads.to_s