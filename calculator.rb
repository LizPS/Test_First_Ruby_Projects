def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  sum = 0
  array.each do |element|
    sum = sum + element
  end
  sum
end

def multiply(array)
  product = 1
  array.each do |element|
    product = product * element
  end
  product
end

def power(a,b)
a ** b
end

def factorial(a)
total = 1
  while a > 0
    total = total*(a)
    a -= 1
  end
total
end
