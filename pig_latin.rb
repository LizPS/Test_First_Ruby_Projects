#this code should really be refactored, it's clumsy. Especially the treatment
# of 'qu'. Consider making a consonant class which includes initial consonant clusters
# %w[bl br cl cr dr fl fr gl gr pl pr sc sk sl sm sn sp squ st str sw tr]
=begin
def translate(string)
  vowels = %w[a e i o u]
  newstring = ''
  array = string.split(' ')
  new_array = []
  array.each do |element|
   element.gsub!(/['qu']/, '*')
      if vowels.include? (element[0])
        new_string = element + 'ay'
      else
        if vowels.include? (element[1])
          new_string = element[1..element.length]+element[0] + 'ay'
        else
          if vowels.include? (element[2])
            new_string = element[2..element.length]+element[0..1] + 'ay'
          else new_string = element[3..element.length]+element[0..2] + 'ay'
          end
        end
      end
   new_string.gsub!('**','qu')
   new_array << new_string
  end
  new_array.join(' ')
end

This is a cleaner version. Create a new Regexp containing all valid english initial consonant clusters. Check if string
begins with one of them. If so, store the cluster and replace with *, rearrange, swap cluster back in. Think this might
still be cleaner without the gsubs. Count length of cluster, use it to adapt the new_string statement.

def translate(string)
  initial_consonants =Regexp.new(/^(sch|scr|shr|sph|spl|spr|squ|str|thr|bl|br|ch|cl|cr|dr|dw|fl|fr|gl|gr|pl|pr|qu\
|sc|sk|sl|sm|sn|sp|st|sw|th|tr|tw|b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z)/)
  array = string.split(' ')
  new_array = []
  array.each do |element|
    if initial_consonants.match(element)
      con = (initial_consonants.match(element)).to_s
      element.gsub!(initial_consonants,'*')
      new_string = element[1..element.length]+element[0] + 'ay'
      new_string.gsub!('*',con)
    else
      new_string = element + 'ay'
    end
    new_array << new_string
  end
  new_array.join(' ')
end

Finally, a decent version. Only one if statement, no dodgy gosubs. Note use of backslash at end of line (and next line
beginning at position 0 to comply with max line of 80 char while having Ruby interpreter read it as a single line)
=end
def translate(string)
  initial_consonants =Regexp.new(/^(sch|scr|shr|sph|spl|spr|squ|str|thr|bl|br|ch|cl|cr|dr|dw|fl|fr|gl|gr|pl|pr|qu\
|sc|sk|sl|sm|sn|sp|st|sw|th|tr|tw|b|c|d|f|g|h|j|k|l|m|n|p|q|r|s|t|v|w|x|y|z)/)
  array = string.split(' ')
  new_array = []
  array.each do |element|
    if initial_consonants.match(element)
      position = ((initial_consonants.match(element)).to_s.length)
      new_string = element[position..element.length]+element[0...position] + 'ay'
    else
      new_string = element + 'ay'
    end
    new_array << new_string
  end
  new_array.join(' ')
end
