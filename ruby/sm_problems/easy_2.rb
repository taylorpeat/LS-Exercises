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

getRoomDimensions