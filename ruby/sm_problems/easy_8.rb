# Problem 1

def sum_of_sums(arr)
  arr.reverse.each.with_index(1).reduce(0) { |sum, (n, idx)| sum + n * idx }
end

# puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# puts sum_of_sums([4]) == 4
# puts sum_of_sums([1, 2, 3, 4, 5]) == 35

# Problem 2

def mad_libs
  print "Enter a noun: "
  noun = gets.chomp
  print "Enter a verb: "
  verb = gets.chomp
  print "Enter an adjective: "
  adj = gets.chomp
  print "Enter an adverb: "
  adverb = gets.chomp
  puts "\nDo you #{verb} your #{adj} #{noun} #{adverb}? That's hilarious!\n\n"
end

# mad_libs

# Problem 3

def substrings_at_start(string)
  string.chars.map.with_index(1) { |_, idx| string.slice(0, idx) }
end

# puts substrings_at_start('abc') == ['a', 'ab', 'abc']
# puts substrings_at_start('a') == ['a']
# puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Problem 4

def substrings(string)
  string.chars.map.with_index { |_, idx| substrings_at_start(string[idx..-1]) }.flatten
end

# print substrings('abcde')
# puts substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# Problem 5

def palindromes(word)
  substrings(word).select { |word| word == word.reverse && word.length > 1 }
end

# puts palindromes('abcd')
# puts palindromes('madam') == ['madam', 'ada']
# puts palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# puts palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# Problem 6

def fizzbuzz(start_num, end_num)
  word = ''

  start_num.upto(end_num) do |i|
    word += "Fizz" if i % 3 == 0
    word += "Buzz" if i % 5 == 0
    word = i.to_s if word.length == 0
    word += ', ' unless i == end_num
    print word
    word = ''
  end

  puts ''
end

# Problem 7

def repeater(string)
  string.chars.zip(string.chars).flatten.join
end

# puts repeater('Hello') == "HHeelllloo"
# puts repeater("Good job!") == "GGoooodd  jjoobb!!"
# puts repeater('') == ''

# Problem 8

def double_consonants(string)
  string.gsub(/([b-df-hj-np-tv-z])/i, '\1\1')
end

# def double_consonants(string)
#   string.chars.map do |char|
#     if char.match(/[a-z]/i) && char.match(/[^aeiou]/i)
#       char + char
#     else
#       char
#     end
#   end.join
# end

# puts double_consonants('String')
# puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# puts double_consonants("July 4th") == "JJullyy 4tthh"
# puts double_consonants('') == ""

# Problem 9

def reversed_number(num)
  num.to_s.reverse.to_i
end

# puts reversed_number(12345) == 54321
# puts reversed_number(12213) == 31221
# puts reversed_number(456) == 654
# puts reversed_number(12000) == 21 # Note that zeros get dropped!
# puts reversed_number(1) == 1

# Problem 10

def center_of(str)
  midpoint = str.length / 2
  if str.length.even?
    str[midpoint - 1..midpoint]
  else
    str[midpoint]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'