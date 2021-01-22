import random
# function randomly return rock or paper or scissors
def choose_rps():
    "output: randomly returns rock, paper, or scissors"
    r = random.randint(0,2)
    if r == 0:
        return "rock"
    elif r == 1:
        return "scissors"
    else:
        return "paper"

# function randomly deciding keep playing or stop playing
def play_again():
  "randomly choose True or False. If True - keep plaing, if false - stop game"
  r = random.randint(0, 1)
  if r == 0:
    return True
  else:
    return False

# function to determ who win
def rps(pl1, pl2):
  # tie
  if pl1 == pl2:
    print("It's a tie!")
  elif pl1 == 'paper':
    if pl2 == 'rock':
      print("Player1 won!")
    else:
      print("Player2 won!") # pl2 = sissors
  elif pl1 == 'sissors':
    if pl2 == 'rock':
      print("Player2 won!")
    else:
      print("Player1 won!") # pl2 = paper
  else: # here pl1 == rock
    if pl2 == 'paper':
      print("Player2 won!")
    else:
      print("Player1 won!") # here pl2 = sissors

# play = True

print('Welcome to Rock, Paper, Scissors!')
print("")
# "while" loop. Play game while "true"
# while play == True:
#   pl1 = choose_rps()
#   pl2 = choose_rps()

#   print("Player1 chose", pl1)
#   print("Player2 chose", pl2)

#   rps(pl1, pl2)

#   print("")

#   play = play_again()

# print('Thank you for playing!')

# the same task with "for" loop
for play in range (0, 5):
  pl1 = choose_rps()
  pl2 = choose_rps()

  print("Player1 chose", pl1)
  print("Player2 chose", pl2)

  rps(pl1, pl2)

  print("")


print('Thank you for playing!')
