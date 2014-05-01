def measure(num=1, &block)
  t1 = Time.now
  num.times { block.call }
  t2 = Time.now
  (t2 - t1)/num
end
