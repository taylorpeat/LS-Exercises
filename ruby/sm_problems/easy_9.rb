# Problem 1

def greetings(names, details)
  puts "Hello, #{names.join(' ')}! Nice to have a #{details.values.join(' ')} around."
end

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })


# Problem 2

def twice(num)
  left, right = num.divmod(10 ** (num.to_s.length / 2))
  left == right ? num : num * 2
end

# puts twice(37) == 74
# puts twice(44) == 44
# puts twice(334433) == 668866
# puts twice(444) == 888
# puts twice(107) == 214
# puts twice(103103) == 103103
# puts twice(3333) == 3333
# puts twice(7676) == 7676
# puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# puts twice(5) == 10


# Problem 3

def negative(num)
  return -num if num > 0
  num
end

# puts negative(5) == -5
# puts negative(-3) == -3
# puts negative(0) == 0      # There's no such thing as -0 in ruby


# Problem 4

def sequence(num)
  arr = []
  
  1.upto(num) do |i|
    arr << i
  end

  arr
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
