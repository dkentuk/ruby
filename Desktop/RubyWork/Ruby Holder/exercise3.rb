puts 'Enter Your first name'
first_name = gets.chomp

puts 'Enter Your last name'
last_name = gets.chomp

puts 'Enter Month of Birth'
month_of_birth = gets.chomp.to_i

puts 'Enter Year of Birth'
year_of_birth = gets.chomp.to_i

current_month 9
current_year 2014
permission = true

final_age = current_year - year_of_birth

if(month_of_birth < current_month)
    final_age + 1
    else
    final_age
end

if (final_age < 6 || final_age > 70)
    puts 'You have done well'
end

#if under 16
if final_age < 16
puts 'Permission'
    response = gets.chomp.downcase
    if response == 'no' || response == 'n'
        permission = false
    puts 'You need permission'
    end
end

if permission
    puts name.capitilize + ', you are bout ' + final_age.to_s + ' years old'
