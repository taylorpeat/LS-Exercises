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

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10