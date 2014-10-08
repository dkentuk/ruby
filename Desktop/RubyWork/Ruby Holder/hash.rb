#my_hash = {1 => 'Bob', 2 => 24}
#
#my_hash[1] # returns 'Bob'
#my_hash[2] # returns 24

#my_hash = {'one' => 'Bob', 'two' => 24}
#
#puts my_hash['one'] # returns 'Bob'
#puts my_hash['two'] # returns 24

#:one is still an object <the keys of hashes> whats data/stuff in program

#my_hash = {one: 'Bob', two: 24}
#
#puts my_hash[:one] # returns 'Bob'
#puts my_hash[:two] # returns 24
#
#
#hash.each do |k, v|
#    puts 'Key: ' + k.to_s;
#    puts 'Value: ' + v
require 'date'
require 'pry'

puts 'Enter Your first name'
first_name = gets.chomp
puts 'Enter Your last name'
last_name = gets.chomp
puts 'Enter Your height'
user_height = gets.chomp.to_f
puts 'Enter Month of Birth'
month_of_birth = gets.chomp.to_i
puts 'Enter Year of Birth'
year_of_birth = gets.chomp.to_i

current_month = 9
current_year = 2014

full_name = first_name + ' ' + last_name
final_age = current_year - year_of_birth
if(month_of_birth < current_month)
    final_age + 1
    else
    final_age
end

my_hash_person = {name: full_name, age: final_age, height: user_height}
puts my_hash_person

puts 'Please enter in a list of known relatives, when done, enter while empty'
yn = gets.chomp
while yn != "no"
  array << yn
  print "What else? "
  yn = gets.chomp
end









