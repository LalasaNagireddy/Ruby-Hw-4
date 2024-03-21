# 5.3 Group Anagrams
def group_anagrams(words)
  groups = Hash.new { |hash, key| hash[key] = [] }

  words.each do |word|
    sorted_word = word.chars.sort.join
    groups[sorted_word] << word
  end

  groups.values
end

input_words = ["tea", "eat", "bat", "ate", "arc", "car"]
result = group_anagrams(input_words)

puts result.inspect

