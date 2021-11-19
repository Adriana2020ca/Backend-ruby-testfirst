#write your code here
def translate(sentence)
    # while (something is true) do

    # do logic 
    # end

    #three
    #[0=t FINE, 1=h FINE ,2=r FINE,3=e WE BREAK HERE]
    #word[i] if i is 2, then we will continuerake
    #if word[i] is a vowel, do the pig latin translation 

    # for (i=0; i=word.length-1; i++){
    # house the logic to translate in here, instead of comparing two or three characters at a time
    #}

    # compact the rest of this logic into the each/while/for loop
    if sentence.count(" ") == nil
        n = 1
    else 
        n = sentence.count(" ") + 1
    end
    output = ""
    for i in 1..n do 
     index = sentence.index(" ") 
     if index == nil
     index = sentence.length + 1
     end
     word = sentence[0..index - 1]
    first_letter = word[0]
    first_two = word[0..1]
    first_three = word[0..2]
    
        vowel=["a", "e", "i", "o", "u"]
    if vowel.include? first_letter
        pig = word + "ay"
    elsif vowel.include? word[1] and word[0] != "q"
        pig = word[1, word.length-1] + word[0] + "ay"
    elsif vowel.include? word[2] and word[1] != "q"
        pig = word[2, word.length-1] + word[0..1] + "ay"
    elsif vowel.include? word[3]
        pig = word[3, word.length-1] + word[0..2] + "ay"
    end
    output = output + pig 
    if n > i 
        output = output + " "
    end
    sentence = sentence[index + 1, sentence.length]
end
return output
end

