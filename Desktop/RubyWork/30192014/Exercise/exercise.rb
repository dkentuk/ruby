require 'date'
require 'pry'

class Person
    #creates setters and getters methods for
    attr_accessor :first_name, :surname, :dob, :add_email, :add_phone, :full_name, :emails, :phone_numbers, :remove_email
    #creates getter method for
    
    def initialize(fname, sname, ddob)
        @first_name = fname
        @surname = sname
        @dob = Date.parse(ddob)
        @full_name = fname + ' ' + sname
        @emails = Array.new
        @phone_numbers = Array.new
        
    end
    
    # a method to take the email and add it into the email array
    def add_email(p_email)
        @emails.push(p_email) 
    end
    
     # a method to take the phone numbers and add it into the phone numbers array
    def add_phone(p_phone)
        @phone_numbers.push(p_phone) 
    end
    
    # method to remove the email at position
    def remove_email(p_arr_position)
        #@emails.pop(p_arr_position)
        @emails.delete_at(p_arr_position)
    end
    
    #method to remove phone number at position
    def remove_phone(p_arr_position)
        @phone_numbers.delete_at(p_arr_position)
    end
    
    # returns the persons information
    def to_s
        "#{@full_name}, was born on #{@dob}.\n
        Their email addresses are: #{@emails}.\n
        Their phone numbers are #{@phone_numbers}"
    end
    
    #print out the details in a much easier to read format
    def print_details
        #variables
        name_length = @full_name.length
        
        #format
        puts("\n")
        puts(@full_name)
        puts ("-") * name_length
        puts("Date of Birth: " + @dob.strftime("%d/%B/%Y"))
        puts("\n")
        puts("Email Addresses: ")
        @emails.each {|x| puts "- #{x}"}
        puts("\n")
        puts("Phone Number: ")
        @phone_numbers.each {|i| puts "- #{i}"}
        puts("\n")
            
    end
    
end

class FamilyMember < Person

    #FamilyMmember stand alone variables
    attr_accessor :relationship_status
    
    #initlilize the code
    def initilize(p_rstatus)
        @relationship_status = p_rstatus
        super
    end
end

binding.pry