#file = File.open('lines.txt')
#
#file.each do |line|
#    puts line
#ens
    
#File.open('newfile.txt', 'w') do |file|
#    file.write "some text"
#end

#File.write('newfile.txt', "some more text")

File.open('names.txt', 'a') do |file| #appended to the file 
    file.write "Another Person"
end