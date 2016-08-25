# In the code below, an array containing different types of pets is assigned to pets.
# Remove 'lizard' from my_pets then print the value of my_pets.
# Expected output:
# I have a pet fish!

pets = ['cat', 'dog', 'fish', 'lizard']
pets.pop
my_pets = [pets[2]]

puts "I have a pet #{my_pets[0]}!"
