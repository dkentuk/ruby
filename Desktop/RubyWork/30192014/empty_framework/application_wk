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
        super(fname, sname, ddob)
    end
end

class AddressBook
    attr_accessor :entries, :data
    
    def initialize
        @entries = []
    end
    
    def add(person)
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
        
        data[:people].each do |info|
            object = Person.new(info[:fname], info[:surname], info[:dob])
            add(object)  
#    end
        

        
#        file = File.open 'people_data.yml'
#        data = YAML::load(file)
        
        #is a hash
	    #data["people"].each do |yaml_person|
	    
        #person = Person.new(yaml_person["fname"], yaml_person["surname"], yaml_person["dob"])
	    #end
	    #yaml_person["emails"].each do |e|
	    #person.add_emails(e)
	    #end
	
	   #yaml_person["phones"].each do |e|
	   #person.add_phone(e)
	   #end
       #@entries.push(person)
        
#      File.open 'people_data.yml' 
#      data = YAML::load(file)
        
#        data[:people].each do |info|
#            object = Person.new(info[:fname], info[:surname], info[:dob])
#            
#            add(object)
        
        
        end
    end
end


#binding.pry
        
       