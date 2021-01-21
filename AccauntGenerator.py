# Write a loop that prompts the user for 5 names.
# Write a loop to generate random student ID numbers from 111111 to 999999.
# Make sure none of the IDs are duplicates.
# Generate student email addresses in the format: (first initial)+(last name)+(last 3 digits of student ID number)@example.org
# On email generation, account for first names with a space in them
# e.g. if the first name is "Mary Jane", then the first initial should be "MJ" rather than just "M".
# Write the code which will print out all the student names, ID numbers, and email addresses in parallel.
# Example:
#  name: ROSIE MARTINEZ
#  id: 123256
#  email: RMARTINEZ256@example.org


#Program prompts user for 5 names
import random

names = [] #list of names
set_ids = set() # set of students ID
emails = []

# ask user 5 times to enter first and last name and store data in "names" list
for i in range(5):
  print("")
  print("Enter first and last name:") 
  i = input()
  names.append(i) # name adding to name list

# "while" loop to create random ID and add ID data to set
while len(set_ids) < 5:
  for id in range(5):
    id = random.randint(111111, 999999) # set up random ID
    set_ids.add(id) # add random ID to ID set. Use set to exlude duplicates

ids = list(set_ids) # transfer set to list

# check if name consist of 2 or 3 words; generate email
i = 0
splitted_name = list()
for name in names:
  splitted_name = name.split()
  if len(splitted_name) == 2:
    emails.append(splitted_name[0][0] + splitted_name[1] + str(ids[i])[-3:] + "@adadev.org") # [-3:] takes last 3 elements from the end of string
  elif len(splitted_name) == 3:
    emails.append(splitted_name[0][0] + splitted_name[1][0] + splitted_name[2] + str(ids[i])[-3:] + "@adadev.org")
  i += 1

# print student names, ID numbers, and email addresses
for id in range(5): 
  print("")
  print("name:", names[id])
  print("ID:", ids[id])
  print("email:", emails[id])
  print("")