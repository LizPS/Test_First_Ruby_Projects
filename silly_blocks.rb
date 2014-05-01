def reverser(&block)
  array = block.call.split(' ')
  array.each { |i| i.reverse! }
  array.join(' ')
end

def adder(num=1, &block)
  block.call + num
end

def repeater(num=1, &block)
  num.times { block.call }
end
