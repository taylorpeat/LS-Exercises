# Problem 1

NUMBERS = %w(1st 2nd 3rd 4th 5th last)

def number_included
  user_numbers = []

  NUMBERS.each do |num|
    puts "Enter the #{num} number:"
    user_numbers << gets.chomp.to_i
  end

  last_number = user_numbers.pop
  if user_numbers.include?(last_number)
    puts "The number #{last_number} appears in #{user_numbers}"
  else
    puts "The number #{last_number} does not appear in #{user_numbers}"
  end
end

number_included


