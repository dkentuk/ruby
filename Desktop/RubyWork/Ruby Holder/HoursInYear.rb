# Hours in a year

puts 365 * 24

# Age in Seconds
# 60secs * 60mins * 24Hours = 1 day. 365 days * year. Take away the remaing days
puts ((60 * 60) * 24) * (365 * 24) - 93 

puts 'Hello World' #string
puts '' #empty string
puts 'hello' + 'world'
puts '12' + '12' #still a string
puts '8' * 20
puts '8' * 20.9

puts 'Trishul says \'Hello Worlds\'' # used to esacpe mid condition

my_string = 'Hello there'
my_string = 7 #overwritten from string to int
puts my_string

name = 'Dave'
puts 'My name is ' + name + '!'
puts 'Wow, ' + name + ' is a cool name'

name = 'Vicki'
puts 'My name is ' + name + '!'
puts 'Wow, ' + name + ' is a cool name'

#string class has a method to convert string to integers
puts '26'.to_i + 6

#Interger converted to float /  can be used for strings too
puts '26'.to_i + 6.to_f

# returns 0 and not errors
puts 'Hello'.to_i

# puts automatically used a .to_s or to string method on every line


#puts gets this echo's

my_name = gets
puts 'Hello ' + my_name + '!'

my_name = gets.chomp # removes the white space charachters from the end 'ENTER' is a white space charachter
puts 'Hello ' + my_name + '!'