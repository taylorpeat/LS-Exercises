# Problem 1

def randomAge
  puts "Teddy is #{ rand(20..200) } years old!"
end

# randomAge

# Problem 2

SQMETERS_TO_SQFEET = 3.28084 ** 2

def getRoomDimensions
  puts "Enter the length of the room in meters:"
  length = gets.chomp

  puts "Enter the width of the room in meters:"
  width = gets.chomp

  area = length.to_f * width.to_f
  puts "The area of the room is #{area.round(1)} square meters " +
       "(#{(area * SQMETERS_TO_SQFEET).round(2)} square feet).\n\n"
end

# getRoomDimensions

# Problem 3

def tipCalculator
  print "What is the bill? "
  bill = gets.chomp.to_f

  print "What is the tip percentage? "
  tip_pct = gets.chomp.to_f

  tip_amt = (bill * tip_pct / 100).round(2)
  total = (bill + tip_amt).round(2)

  puts "\nThe tip is $#{format("%.2f", tip_amt)}"
  puts "The total is $#{format("%.2f", total)}\n\n"
end

# tipCalculator

# Problem 4

def retirementAge
  print "What is your age? "
  age = gets.chomp.to_i

  print "At what age would you like to retire? "
  ret_age = gets.chomp.to_i

  cur_year = Time.now.year
  years_rem = ret_age - age
  ret_year = cur_year + years_rem

  puts "\nIt's #{cur_year}. You will retire in #{ret_year}"
  puts "You have only #{years_rem} years of work to go!\n\n"
end

# retirementAge

# Problem 5

def nameYell
  print "What is your name? "
  name = gets.chomp

  if /!$/ =~ name
    puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}"
  end
end

nameYell