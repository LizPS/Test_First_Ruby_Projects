class Book
  attr_accessor :title #shortcut method for being able to read and assign instance variable @title

  def title
    small_words = %w[a an the and but or for nor on at to from by in of]
    array = @title.split
    array.each_with_index do |word, i|
      (i == 0) ? word.capitalize! : (word.capitalize! unless small_words.include?(word))
    end
    array.join(' ')
  end
end

#the &:method syntax in map is a concise way to call a method on each item in the array
# e.g. array.map(&:capitalize) to capitalize every word in the array
