# Problem 1

def greetings(names, details)
  puts "Hello, #{names.join(' ')}! Nice to have a #{details.values.join(' ')} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
