# Problem 1

def interleave(arr1, arr2)
  new_array = []
  arr1.each.with_index do |el, idx|
    new_array += [el, arr2[idx]]
  end
  new_array
end

# puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Problem 2

def letter_case_count(string)
  lowercase = string.gsub(/[^a-z]/, '').size
  uppercase = string.gsub(/[^A-Z]/, '').size
  neither = string.delete('a-zA-Z').size
  { lowercase: lowercase, uppercase: uppercase, neither: neither }
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }