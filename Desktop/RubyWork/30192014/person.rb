require 'pry'

class Person
        attr_accessor :hair_color,  :top_color    #creates setter and getters methods
 
        attr_reader :height #only getter
    
    #instance Variables
#    def initialize(params)
#        @hair_color = params[:hair] || "Red"
#        @height = h
#        @top_color = top
#    end
#
#    def initialize(params = {})
#        @hair_color = params.fetch(:hair, 'Blue')
#        @height = 0.0
#        @top_color = nil
#    end
    
    def initialize(height = 0.0)
        @hair_color = nil
        @height = height
        @top_color = nil
    end
   
#    #Setters
#    def hair_color=(color)
#        @hair_color = color
#    end
#    
#    def height=(h)
#        @height = h
#    end
#    
#    def top_color=(color)
#        @top_color = color
#    end
#    
#    #getters
#    def hair_color#()
#        return @hair_color  #any ruby method will always return the last line in the method
#    end
#    
#    def height
#        return @height 
#    end
#    
#    def top_color
#        return @top_color 
#    end
    
    
    
    #methods
    def dance#()
        puts 'I am dancing'
    end
    
    def sleep#()
        puts 'I am sleeping'
    end 
    
    def to_s
#        return 'This is a person of height ' + @height +', with hair color of ' + @hair_color + ', and top color of ' + @top_color
        return "This is a person of height  +#{@height},  with hair color of#{@hair_color} , and top color of  #{@top_color}"
    end
    
end

class Baby < Person
        attr_accessor :smells
    
    def initialize(height = 0.0)
        @smells = true
        super
    end
    
    def cry
        if @smells
            "Waaaargh"
        else
            "I don't smell, so I'm not crying"
        end
    end
    
    def dance
        "I'm a baby, do a barrel roll, press a to shoot"
    end
    
end

binding.pry