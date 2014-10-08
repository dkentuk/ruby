
#puts 1 < 2
#puts 1 == 0.5
#puts 1 >= 2

#puts 'Enter your name: '
#name = gets.chomp
#puts 'hello, ' + name

#if (name == "Dave")
#    puts 'Thats\'s a great name'
#    elseif (name == "Aaron")
#    puts "You have lovely hair"
#    else
#    puts "topkek"
#end

#puts 'Enter your name'
#name = gets.chomp

#if name == name.upcase
    #shouting
#    else
    #not shouting
#end

#                   && = and
#                   || = or
#if !(name == 'Danny' || name == 'Vicki')
#unless ^ same as *if !()*
#if name == 'Danny' || name == 'Vicki'
    #do something
    #else
    #dos something else
#end

#Ask for name, month and year

def user_requirements(fname, lname, month, yearofbirth)
    full_name = fname + ' ' + lname
    today_year = 2014
    today_month = 9
    month = 9
    yearofbirth = 1990
    final_age = (today_year - yearofbirth) + final_age_month
    puts full_name 
    puts final_age
    end

#if (today_month < month)
#    final_age_month = 0
#    else
#    final_age_month = 1
#end
    

puts 'Enter Your First Name, Last Name, Month of Birth, Year of Birth: '
user_requirements(gets.chomp)