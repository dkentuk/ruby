# Program that asks for persons username and age in years, calculates the number of seconds the person has been alive in years, before display the message

puts 'Users Year to second calculator'
puts 'Please enter User name: '

first_name = gets.chomp

puts 'Please enter age (In years): '
years = gets.chomp

#int
seconds = ((60 * 60) * 24) * (365 * years.to_i)

puts 'Hello ' + first_name + ' You have been alive for: ' + seconds.to_s
