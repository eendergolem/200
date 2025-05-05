sentence = "I love Ruby programming!"

def pig_latin_word(word)
  match = word.match(/(\w+)(\W*)/)
  if match
    core, punctuation = match[1], match[2]
    pig_word = core[1..] + core[0] + "ay"
    pig_word + punctuation
  else
    word
  end
end

pig_latin_sentence = sentence.split.map { |word| pig_latin_word(word) }.join(" ")

puts "Pig Latin: #{pig_latin_sentence}"
