# your code goes here


# MadLib Program
text = "madlib"

print(f"Welcome to my {text.upper()} program! Please enter some information below:") # Greeting user. Use upper() function to uppercase madlib
print("") # Add space between strings

# list to store all parts of speech
list_of_words = [
      '1 verb ending -ing', 
      '1 adverb',
      '1 adjective',
      '2 verb ending -ing',
      '1 first name',
      '2 first name',
      '3 first name', 
      'noun place', 
      '2 adjective',
      '1 plural noun',
      'adjective color',
      '2 plural noun', 
      '1 verb',
      '1 noun food',
      '2 noun food',
      '2 verb',
      '3 verb',
      'noun part of the body',
      'noun animal',
      '4 verb',
      '3 plural noun',
      '3 verb ending -ing',
      '4 verb ending -ing',
      '5 verb ending -ing',
      '3 adjective']

print(list_of_words)

# dictionary to store user input

user_inputs = {}

# for loop to prompt user inputs

for word in list_of_words:
  entering_word = input(f'Please enter {word}: ')
  user_inputs[word] = entering_word

print(user_inputs)

# Print MadLib

print(f"""I'm {user_inputs['1 verb ending -ing']}a {user_inputs['1 adverb']} {user_inputs['1 adjective']} party for my birthday. I'm {user_inputs['2 verb ending -ing']}
        my best friends, like {user_inputs['1 first name']} and {user_inputs['2 first name']} and {user_inputs['3 first name']}. The party will be at the
        {user_inputs['noun place']} with {user_inputs['2 adjective']} {user_inputs['1 plural noun']} and {user_inputs['adjective color']} {user_inputs['2 plural noun']} 
        for decorations. First, we will {user_inputs['1 verb']}, like {user_inputs['1 noun food']} and {user_inputs['2 noun food']}, and then we will
        {user_inputs['2 verb']} some party games, like {user_inputs['3 verb']} the {user_inputs['noun part of the body']} on the
        {user_inputs['noun animal']} and {user_inputs['4 verb']} the {user_inputs['3 plural noun']}. Then comes my favorite part: 
        {user_inputs['3 verb ending -ing']} Happy Birthday, {user_inputs['4 verb ending -ing']} presents and {user_inputs['5 verb ending -ing']} some
        {user_inputs['3 adjective']} cake.""")
