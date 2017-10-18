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

multiple_operations