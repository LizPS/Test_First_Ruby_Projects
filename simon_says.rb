def echo(string)
 string
end

def shout(string)
  string.upcase
end

def repeat(string,n=2)
  new_string = ''
  while n > 1 do
    new_string << string + ' '
    n -= 1
  end
  new_string << string
  new_string
end

def start_of_word(string, n)
  string[0,n]
end

def first_word(string)
  (string.split(' '))[0]
end

def titleize(string)
  small_words = %w[a an the and but or for nor on at to from by in of over]
  array = string.split
  array.each_with_index do |word, i|
    if (i == 0) then
      word.capitalize!
    else
      (word.capitalize! unless small_words.include?(word))
    end
  end
  array.join(' ')
end
