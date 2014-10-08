require 'pry'

class Person
    #creates setter and getters methods 
    attr_accessor :hair_color,  :top_color 
    #only getter
    attr_reader :height 
    
    def initialize(height = 0.0)
        @hair_color = nil
        @height = height
        @top_color = nil
    end
    
    #methods
    def dance
        puts 'I am dancing'
    end
    
    def sleep
        puts 'I am sleeping'
    end
    
end

#inherited class
class Baby < Person
        attr_accessor :smells
    
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