# Problem 1
require 'pry'
require 'rb-readline'

def repeat(string, num)
  num.times do
    puts string
  end
end

# repeat("hello", 3)

# Problem 2

def is_odd?(number)
  number % 2 == 1
end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# Problem 3

def digit_list(num)
  num.to_s.split('').map(&:to_i)
end

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# Problem 4

def count_occurrences(vehicles)
  vehicles.uniq.each do |item|
    puts "#{item} => #{vehicles.count(item)}"
  end
end

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)

# Problem 5

def reverse_sentence(sentence)
  sentence.split(' ').reverse.join(' ')
end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Problem 6

def reverse_words(string)
  string.split(' ').map { |word| reverse_word(word) }.join(' ')
end

def reverse_word(word)
  return word if word.length < 5
  word.chars.reverse.join
end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Problem 7

def stringy(num)
  string = ""
  
  num.times do |n|
    string += ((n + 1) % 2).to_s
  end

  string
end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


# Problem 8

def average(integers)
  integers.reduce(:+) / integers.length
end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Problem 9

def sum(num)
  num.to_s.chars.reduce(0) { |sum, n| sum + n.to_i }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45