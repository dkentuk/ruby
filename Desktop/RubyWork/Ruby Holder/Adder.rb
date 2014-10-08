# Adds 2 user inputted numbers

puts ('8' * 20) + 'Adder Program' + ('8' * 20)
puts 'Please enter the first number you would like adding'
first_number = gets.chomp
puts 'PLease enter the second number'
second_number = gets.chomp
#converted the entrerd string into an integer ready to be added
puts first_number.to_i + second_number.to_i 