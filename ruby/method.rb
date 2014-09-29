#methods

#
 #   def do_something()
  #  puts 'Foo'
   # end

#do_something 


#like a function 
#def print_my_message(fname, sname, age)
#    full_name = fname + ' ' + sname
#    puts full_name + ' is ' + age.to_s + ' years old'
#end

#print_my_message "Joe", "Bloggs", rand(100)


def cap_and_reverse(str)
    full_str = str
    puts full_str.upcase.reverse
end

puts 'Enter a string: '
cap_and_reverse(gets.chomp)