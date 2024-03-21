# 5.4 Count Number of Identical Arrays
def count_identical_arrays(*arrays)
  array_counts = arrays.group_by(&:itself).transform_values(&:size)
  most_frequent_array_count = array_counts.values.max || 0
  most_frequent_array_count
end

# Example usage:
input1 = [0, 0, 0], [0, 1, 2], [0, 0, 0], [2, 1, 0]
output1 = count_identical_arrays(*input1)
puts "Output1: #{output1}"

input2 = [0, 1, 0], [0, 1, 2], [0, 2, 0], [2, 1, 0]
output2 = count_identical_arrays(*input2)
puts "Output2: #{output2}"

input3 = [0, 1, 2], [0, 1, 2], [0, 1, 2], [2, 1, 0]
output3 = count_identical_arrays(*input3)
puts "Output3: #{output3}"
