# write a program that does the following:
# Ask the user for the count of numbers.
# Do the following count number of times:
# Ask the user to input a positive integer value
# If the number is divisible by 3, display a message to share so and a different message otherwise.

puts "Let's play a numbers game. How many numbers would you like to enter?"

# save user choice of number of games to variable number_games
number_games = gets
number_games = number_games.to_i

# use while loop asking user input positive value and cheking this value divisible by 3 or not
i = 0
while i < number_games do # loop is executed while value of loop control variable is less than number_games (user choice)
  puts "Enter the #{i+1}st positive integer:"
  integer = gets
  integer = integer.to_i
  if integer % 3 == 0
    puts "#{integer} is divisible by 3."
  else
      puts "#{integer} is not divisible by 3."
  end
  i += 1 # increment the value of loop control variable by 1
end

# use ".times" loop
# number_games.times do
#   puts "Enter the positive integer:"
#   integer = gets
#   integer = integer.to_i
#   if integer % 3 == 0
#     puts "#{integer} is divisible by 3."
#   else
#       puts "#{integer} is not divisible by 3."
#   end
# end
