# You’ve got some money and you want to buy some candy. So, you go up to the candy machine, put in your money, select your candy,
# and then pick up your candy and your change. 

# Ask the user how much money they have.
# Display all candy options and their costs (even if the user cannot afford the candy)
# Decide whether the user can afford the candy or not, if they can't, tell them so, if they can, calculate and display their change
# Handle when the buyer enters "C" or "c" so that it works as expected
# Do something appropriate when the buyer enters an invalid amount for the money and an invalid selection



puts "Welcome to Ada Developers Academy’s Computer Candy Machine!"
puts "(All candy provided is virtual.)"
puts ""
puts "How much money do you have?"

# save user input to variable money_have
money_have = gets
money_have = money_have.chomp

# transfer user input number to float
money_have = money_have.to_f
puts ""
puts "Let's me see what we have here."
puts ""
puts "
    A $0.65 Twix
    B $0.50 Chips
    C $0.75 Nutter Butter
    D $0.65 Peanut Butter Cup
    E $0.55 Juicy Fruit Gum
    "
puts "So, What'll you have? "

# save user choice from list to variable I_choose (a, b, c ,d or e)
I_choose = gets
I_choose = I_choose.chomp

# Transfer user choice from letter (a,b,c ...) to number
if I_choose == "A" || I_choose == "a"
  I_choose = 0.65
elsif I_choose == "B" || I_choose == "b"
  I_choose = 0.50
elsif I_choose == "C" || I_choose == "c"
  I_choose = 0.75
elsif I_choose == "D" || I_choose == "d"
  I_choose = 0.65
elsif I_choose == "E" || I_choose == "e"
  I_choose = 0.55
else
    puts "Sorry, we don't have this choice."
    exit
end

I_choose = I_choose.to_f

#compare how much money user has with cost of his/her/it choice
if money_have >= I_choose
  change = money_have - I_choose
  change = change.round(2)
  puts "Thanks for purchasing candy through us.
    Please take your candy, and your $#{change} change!"
else
  puts "You're broke. Take your $#{money_have} and go elsewhere."
end
