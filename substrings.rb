require 'pry-byebug'
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, list)
  #binding.pry
  list.select do |word|
    string.include?(word)
  end
end

puts substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
