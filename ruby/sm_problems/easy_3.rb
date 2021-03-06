require 'pry'
require 'rb-readline'

# Problem 1

NUMBERS = %w(1st 2nd 3rd 4th 5th last)

def number_included
  user_numbers = []

  NUMBERS.each do |num|
    puts "Enter the #{num} number:"
    user_numbers << gets.chomp
  end

  last_number = user_numbers.pop

  if user_numbers.include?(last_number)
    puts "The number #{last_number} appears in #{user_numbers}"
  else
    puts "The number #{last_number} does not appear in #{user_numbers}"
  end
end

# number_included

# Problem 2

OPERATIONS = %i(+ - * / % **)

def multiple_operations
  puts "Enter the first number:"
  num1 = gets.chomp.to_i
  puts "Enter the second number:"
  num2 = gets.chomp.to_i

  OPERATIONS.each do |op|
    puts "#{num1} #{op} #{num2} = #{[num1, num2].reduce(op)}"
  end
end

# multiple_operations

# Problem 3

def character_counter
  puts "Please write a word or multiple words:"
  string = gets.chomp

  chars = string.gsub(' ', '').length

  puts "There are #{chars} characters in #{string}."
end

# character_counter

# Problem 4

def multiply(num1, num2)
  num1 * num2
end

# puts multiply(5,3) == 15

# Problem 5

def square(num)
  multiply(num, num)
end

def power_of(num)
  product = 1
  num.times { product = multiply(product, num) }
  product
end

# puts square(5) == 25
# puts square(-8) == 64

# Problem 6

def xor?(boolean1, boolean2)
  boolean1 != boolean2
end

# puts xor?(5.even?, 4.even?) == true
# puts xor?(5.odd?, 4.odd?) == true
# puts xor?(5.odd?, 4.even?) == false
# puts xor?(5.even?, 4.odd?) == false

# Problem 7

def oddities(arr)
  new_arr = []
  
  while arr.length > 0
    new_arr << arr.shift
    arr.shift if arr.length > 0
  end

  new_arr
end

# puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []

# Problem 8

def palindrome?(string)
  string == string.reverse
end

# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true
# puts palindrome?([1,2,3]) == false
# puts palindrome?([1,2,1]) == true

# Problem 9

def real_palindrome?(string)
  parsed_string = string.gsub(/\W/, '').downcase
  parsed_string == parsed_string.reverse
end

# puts real_palindrome?('madam') == true
# puts real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false


# Problem 10

def palindromic_number?(num)
  num_str = num.to_s
  num_str == num_str.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
puts palindromic_number?(05) == true