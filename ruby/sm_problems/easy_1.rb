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

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)