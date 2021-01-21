# Mad lib game. This is the link to become familiar with the game https://www.madtakes.com/libs/188.html
# Mad Libs is a phrasal template word game which consists of one player prompting others for a list of words to substitute for blanks in a story before reading aloud.

text = "MadLib"

puts "Welcome to my #{text.upcase} program! Please enter some information below:" # Greeting user. Use upper() function to uppercase madlib
puts "" # Add space between strings

# Array to store all parts of speech
list_of_words = [
  '1 verb ending -ing', 
  '1 adverb',
  '1 adjective',
  '2 verb ending -ing',
  '1 first name',
  '2 first name',
  '3 first name', 
  'noun place', 
  'number between 5 and 80'
]

# Array to store user input
user_inputs = []

# for loop to prompt user inputs
list_of_words.each do |word|
  puts "Please enter #{word}: "
  entering_word = gets
  entering_word = entering_word.chomp
  user_inputs.push(entering_word)
end

puts "#{user_inputs}"


#Print MadLib

puts "I'm #{user_inputs[0].capitalize} a #{user_inputs[1]} #{user_inputs[2]} party for my birthday. I'm #{user_inputs[3]}
my best friends, like #{user_inputs[4].upcase} and #{user_inputs[5].upcase} and #{user_inputs[6].upcase}. The party will be at the
#{user_inputs[7]} Now I am #{user_inputs[8]} old."



