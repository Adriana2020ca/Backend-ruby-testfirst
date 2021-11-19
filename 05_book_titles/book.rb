
class Book
def title=(b)
  @b = titleize(b)
end

def title
  @b
end

def titleize(words)
  l_words = ['an', 'the', 'and', 'in', "a",'of']
  words.split.each_with_index.map do |word, index|
    index == 0 || !(l_words.include? word) ? word.capitalize : word
  end.join(" ")    
end    
end
