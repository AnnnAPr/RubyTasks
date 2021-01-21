# Ask the user for the count of numbers.
#  - Create an array to hold the numbers that the user will input
# Do the following count number of times:
#  - Ask the user to input a positive integer value
#  - Save the user input as an integer value into the next location in the array.
#  - Go through each value in the array and compare each value to the last number entered by the user. Based on the comparison print the following:
#     If the value in the array is less than the value of the last number entered, print to the terminal that the value at that index is less than the value at the last index.
#     If the value in the array is greater than the value of the last number entered, print to the terminal that the value at that index is greater than the value at the last index.
#     If the value in the array is equal to the value of the last number entered, print to the terminal that the value at that index is equal to the value at the last index.
# Print the following three to the terminal:
#  - The minimum value in the array. Note: The minimum value is the lowest value in the array.
#  - The maximum value in the array. Note: The maximum value is the highest value in the array.
#  - The average of all the elements in the array. Note: The average is calculated as the (the sum of elements) / (the count of all elements).


puts "Let's play a numbers game. How many numbers would you like to enter?"

# save user choice of number of games to variable number_games
number_games = gets
number_games = number_games.to_i

# use while loop
i = 0
user_inputs = []
while i < number_games do # loop is executed while value of loop control variable is less than number_games (user choice)
  puts "Enter the #{i+1}st positive integer:"
  integer = gets
  integer = integer.to_i
  user_inputs.push(integer)
  i += 1 # increment the value of loop control variable by 1
end

puts "#{user_inputs}"

# .times loop to go throught array length of array times
user_inputs.length.times do |i|
  if user_inputs[i] < user_inputs.last
    puts "The value at index #{i}, #{user_inputs[i]} is less than value at the last index, #{user_inputs.last}."
  elsif user_inputs[i] > user_inputs.last
    puts "The value at index [i], #{user_inputs[i]} is greater than value at the last index, #{user_inputs.last}."
  elsif user_inputs[i] == user_inputs.last
    puts "The value at index [i], #{user_inputs[i]} is equal to the value at the last index, #{user_inputs.last}."
  end
end

# .each loop to go throught array length of array times
# i = 0
# user_inputs.each do |input|
#   if input < user_inputs.last
#     puts "The value at index #{i}, #{input} is less than value at the last index, #{user_inputs.last}."
#   elsif input > user_inputs.last
#     puts "The value at index #{i}, #{input} is greater than value at the last index, #{user_inputs.last}."
#   elsif input == user_inputs.last
#     puts "The value at index #{i}, #{input} is equal to the value at the last index, #{user_inputs.last}."
#   end
#   i += 1
# end
puts ""
puts "The minimum value in the array is #{user_inputs.min}."
puts "The maximum value in the array is #{user_inputs.max}."
puts "The average of all the values in the array is #{(user_inputs.sum.to_f / user_inputs.length.to_f).round(1)}."