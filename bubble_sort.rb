def bubble_sort(array)
  until is_sorted?(array)
    index= 0
    while index < array.length - 1
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
      index += 1
    end
  end 
  array
end

def is_sorted?(array)
  (0...array.length - 1).each do |i|
    return false if array[i] > array[i + 1]
  end
  true
end

p bubble_sort(gets.chomp.split(",").map(&:to_i))