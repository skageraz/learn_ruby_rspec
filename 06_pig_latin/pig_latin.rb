#write your code here

def translate(strings)

  def translation(string)
    vowels= %w(a e i o u)
    alphabet= ("a".."z").to_a
    consonants= alphabet - vowels

    if vowels.include?(string[0])
      string << "ay"

    elsif consonants.include?(string[0]) && consonants.include?(string[1]) &&
consonants.include?(string[2]) || consonants.include?(string[0]) && "q".include?(string[1]) && "u".include?(string[2]) 
      string[3..-1]+string[0..2] << "ay"

    elsif consonants.include?(string[0]) && consonants.include?(string[1]) || "q".include?(string[0]) && "u".include?(string[1])
      string[2..-1]+string[0..1] << "ay"

    elsif consonants.include?(string[0])
      string[1..-1]+string[0] << "ay"

    end
  end

  if strings.include?(" ")
    phrase= strings.split(" ")
    phrase.map! do |word|
      translation(word)
    end
    return strings= phrase.join(" ")
  else 
    return translation(strings)
  end
end
