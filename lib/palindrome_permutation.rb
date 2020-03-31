
def palindrome_permutation?(string)
  string_array = string.split("")
  hash_of_letters = {}
  string_array.each do |letter|
    if hash_of_letters.keys.include?(letter)
      hash_of_letters[letter] += 1
    else
      hash_of_letters[letter] = 1
    end
  end
  return true if hash_of_letters.select { |letter,value| value%2 != 0}.keys.length <= 1
  return false
end