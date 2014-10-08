#possible solutions
dob=""

if dob != ""
    @dob = Date.parse(dob)
    esle
    @dob = 0
    
    
    def fullname
        "#{@firstname.capitalize} #{@surname.captialize}"
    end
    
#exercise 3
    
class FamilyMember < Person

    #FamilyMmember stand alone variables
    attr_accessor :relationship
    
    #initlilize the code
    
    def initialize(relationship="relative", *args) #*args captures any other argurments
        @relationship = p_rstatus
        super
    end
    
#exercise 4
    class AddressBook
        def initialize
            @entires = []
        end
        
        def add(person)
            if person.class == Person || person.class == FamilyMember
                @entires << persons
                else
                    raise "Not Valid" 
            end
        end
    
    