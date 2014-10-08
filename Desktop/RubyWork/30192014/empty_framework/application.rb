#####################################################################
#   A Ruby Application Exercise for Testing Circle                  #
#   By David Kent                                                   #
#   03/10/2014                                                      #
#                                                                   #
#   Notes:                                                          #
#   This was my attempt at the Exercise. There are some areas left  #
#   to be implemented as i don't have enough experience to it       #
#   on my own. This is what i could do to the best of my ability    #
#   with minimal help. All time afterwards will be utilised for     #
#   learning and fixing up areas                                    #
#                                                                   #
#####################################################################

require 'date'
require 'pry'
require 'yaml'

file = File.open 'people_data.yml'
data = YAML::load(file)

class Person
    #getter and setters 
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
    attr_accessor :relationship_status
    
    def initialize(fname, sname, ddob, p_rstatus = nil)
        @relationship_status = p_rstatus
        #pulls the variables from the parent to be used in this inheritance class
        super(fname, sname, ddob)
    end
end

class AddressBook
    attr_accessor :entries, :data
    
    def initialize
        @entries = []
    end
    
    def add(person)
        # checks to see if the person being entered is of class Person/FamilyMember
        if person.class == Person || person.class == FamilyMember
            @entries.push(person)
        else
            raise "Not Valid"
        end
    end

    def list
        return @entries
    end     
            
    #used to load in the YAML file and load it into the appilcation
    def load_yaml(filename)
        @data = YAML::load(File.open(filename))
        #loops through each subsection under 'people' within the YAML file
        data[:people].each do |info|
            #assigns object to be a New Person with the information gathered from YAML
            object = Person.new(info[:fname], info[:surname], info[:dob])
            #Calls the Add method
            add(object)  
        end
    end
            
    def remove_name(p_name)
    #to implement remove code by first name
       # @entries.delete(p_name[:fname].to_s)
    #@entries.delete_if { |x| x == p_name }
        @entries.delete('p_name')
    end
end

# Is used with the 'Pry' Gem. Powerful alternative to the standard IRB shell
binding.pry
        
       