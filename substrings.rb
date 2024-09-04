dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, list)
  substrings = {}
  string_words = string.downcase.split(" ")
  string_words.each do |word|
    list.each do |substring|
      if word.include?(substring)
        if substrings[substring] == nil
          substrings[substring] = 1 
        else
          substrings[substring] += 1
        end
      end
    end
  end
  return substrings 
end

puts substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
input_string = gets.chomp
input_dictionary = []
input = nil
until input == "/end"
  input = gets.chomp
  input_dictionary.push(input)
end
p substrings(input_string, input_dictionary)