
def permutations?(string1, string2)
  string1_array = string1.split("")
  string2_array = string2.split("")
  hash_of_letters = {}

  string1_array.each do |letter|
    if hash_of_letters.keys.include?(letter)
      hash_of_letters[letter] += 1
    else
      hash_of_letters[letter] = 1
    end
  end

  string2_array.each do |letter|
    if hash_of_letters.keys.include?(letter)
      hash_of_letters[letter] -= 1
    else
      return false
    end
  end
  
  return true if hash_of_letters.select { |letter,value| value != 0}.keys.length == 0
  return false
end
