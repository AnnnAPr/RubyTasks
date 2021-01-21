# write a program that does the following:
# Do the following three times:
# Ask the user to input a positive integer value
# Convert the user input to an integer and save the value in a variable.
# Add 20 to each of the three numbers and print this new value for each to the console.
#The output should look something like Twenty added to the numbers you entered gives us 24, 73 and 42.

# create array to keep user input integer value
users_inputs = Array.new

# create array to keep values (from users_inputs array) + 20
added_values = Array.new

# for loop to ask user input integer 3 times and add each value to users_inputs array
for i in 1..3 do
  puts "Please enter positive integer value: "
  input = gets
  integer = input.to_i
  users_inputs.push(integer)
end

# for loop to add 20 to each value from users_inputs array and add new value to added_values array
for i in 0..2 do
    added_20 = users_inputs[i] + 20
    added_values.push(added_20)
end

# print result
puts "Twenty added to the numbers you entered gives us #{added_values[0].to_s}, #{added_values[1].to_s} and #{added_values[2].to_s}."