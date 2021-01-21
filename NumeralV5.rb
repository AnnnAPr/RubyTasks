# hash with key "random_numbers_key" and value is empty array
random_numbers_hash = {}
random_array = Array.new # array for random numbers 
array_user_inputs = Array.new # array for user inputs

# times loop to generate 5 random numbers between 12 and 21, both inclusive
5.times do |i|
  rand_number = rand(12..21)
  random_array[i] = rand_number
end

# add key "random_numbers" and value "random_array" to hash
random_numbers_hash[ :random_numbers] = random_array

puts random_numbers_hash
puts ""

# times loop to get user input numbers  between 12 and 21, both inclusive and add them to array
puts "Please provide five integer values between 12 and 21, both inclusive:"
puts ""
5.times do |i|
  puts "What's number #{i + 1}?"
  input = gets
  input = input.to_i
  array_user_inputs.push(input)
end

# add key "user_input" and value "array_user_inputs" to hash
random_numbers_hash[ :user_input] = array_user_inputs

puts ""

puts random_numbers_hash