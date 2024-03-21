# 5.5 Majority Vote
def majority_vote(arr)
  return nil if arr.empty?

  vote_count = Hash.new(0)

  arr.each do |element|
    vote_count[element] += 1
    return element if vote_count[element] > arr.length / 2
  end

  "Nill"
end

# Example usage:
input1 = ["A", "A", "B"]
output1 = majority_vote(input1)
puts "Output1: "
puts output1

input2 = ["A", "A", "A", "B", "C", "A"]
output2 = majority_vote(input2)
puts "Output2: "
puts output2

input3 = ["A", "B", "B", "A", "C", "C"]
output3 = majority_vote(input3)
puts "Output3: "
puts output3
