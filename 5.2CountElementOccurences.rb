# 5.2 Count element occurences
def count_occurrences(arr)
  occurrences = Hash.new(0)

  arr.each do |element|
    occurrences[element] += 1
  end

  occurrences.each do |key, value|
    puts "#{key}\t#{value}"
  end
end

# Example usage:
input1 = [3, 5, 4, 3, 4, 3, 6, 5, 6, 4, 5, 3, 1, 2, 1, 3, 4, 2, 3]
puts "Input1 Results: "
count_occurrences(input1)

puts "\n"

input2 = ["kenyon", "college", "kenyon", "kenyon", "college"]
puts "Input2 Results: "
count_occurrences(input2)

