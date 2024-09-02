require 'pry-byebug'
def caesar_cipher(string, shift)
  #binding.pry
  string.gsub!(/[A-Z]/){|c| shift_character(c, shift)}
  string.gsub!(/[a-z]/){|c| shift_character(c, shift)}
    return string
end

def shift_character(character, shift)
  if upcase?(character) && character.ord + shift > 90
      (character.ord + shift - 26).chr 
  elsif character.ord + shift > 122
      (character.ord + shift - 26).chr
  else
      (character.ord + shift).chr
  end
end

def upcase?(character)
  character == character.upcase
end

def get_input_string
puts "What do you want to encrypt?"
input_string = gets.chomp.to_s
    return input_string
end

def get_input_shift
puts "By how much do you want to shift the letters?"
input_shift = gets.chomp.to_i
  if input_shift == 0
    puts "not an Integer!"
    get_input_shift
  else
    return input_shift
  end
end

puts caesar_cipher(get_input_string(), get_input_shift())