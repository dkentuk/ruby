require 'date'

class Person
    attr_accessor :first_name, :surname, :dob, :emails, :phone_number
    
    def initialize (fname, sname, dob)
        @first_name = fname
        @surname = sname
        @dob = Date.parse(dob)
        @emails = []
        @phone_number = []

    end   
    
    def add_email(p_email)
        @emails.push(p_email)
    end
    
    def add_phone(p_phone)
        @phone_number.push(p_phone)
    end
    
    def remove_email(p_email_position)
        @emails.delete_at(p_email_position)
    end
    
    def fullname
        "#{@first_name} #{@surname}"
    end
      
end

class FamilyMember < Person
end