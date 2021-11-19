#write your code here
def echo(word)
        word = word
end

def shout(string)
    string.upcase
end

def repeat(string, num=2)
    output = string
    (num-1).times {output=output + " " + string}
    return output
end

def start_of_word(word, index)
    word[0, index]
end

def first_word(string)
    i = string.index(" ")
    string[0, i]
end

def titleize(string)
  string_array = []
  string.split.each_with_index do |str, i|
    if i == 0 || !["and", "over", "the"].include?(str)
      string_array << str.capitalize
    else 
      string_array << str
    end
  end
  string_array.join(' ')
end

