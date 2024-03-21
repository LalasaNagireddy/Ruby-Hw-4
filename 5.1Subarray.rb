# 5.1 Subarray
def subarray(arr1, arr2)
  arr1.each_cons(arr2.length).include?(arr2)
end

def get_array
  puts "Enter an array as a comma-delimited list (e.g., 1,2,3):"
  input = gets.chomp
  elements = input.split(",").map(&:strip)

  if elements.all? { |element| element =~ /^-?\d+$/ }
    elements.map(&:to_i)
  else
    elements
  end
end

# Example usage:
arr1 = get_array
arr2 = get_array

result = subarray(arr1, arr2)

puts result ? "#{arr2} is a subarray of #{arr1}" : "#{arr2} is not a subarray of #{arr1}"


  


