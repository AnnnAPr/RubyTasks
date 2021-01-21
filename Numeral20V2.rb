# write a program that does the following:
# Do the following three times:
# Ask the user to input a positive integer value
# If the number is greater than or equal to 20, display a message to share so and a different message otherwise.

# create array to keep user input positive integer value
users_inputs = Array.new

# "for" loop asking user enter number 3 times and keep each value in users_inputs array
for i in 1..3 do
  puts "Please enter positive integer value: "
  input = gets
  integer = input.to_i
  users_inputs.push(integer)
end

# "for" loop to compare each value from users_inputs array (its length is 3) with 20
for i in 0..2 do
  if users_inputs[i] >= 20
    puts "#{users_inputs[i]} is greater than or equal to 20."
  else
    puts "#{users_inputs[i]} is less than 20."
  end
end

