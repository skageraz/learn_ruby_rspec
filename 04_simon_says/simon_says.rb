#write your code here

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, number=2) 
  [word].cycle(number).to_a.join(' ')
end

def start_of_word(word, number)
  word.slice(0..number-1)
end

def first_word(word)
  word.split.at(0)
end

def titleize(string)
  little_words = %w[and the]
  words = string.split(" ") 

  words.each do |word|
    word.capitalize! unless little_words.include?(word)
  end

  words[0].capitalize!
  words.join(" ")
end
