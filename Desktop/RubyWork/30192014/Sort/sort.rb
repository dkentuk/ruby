require 'pry'

class SortClass
    attr_accessor :too_sort, :sort_array
    
    def initialize(tsort = nil)
        @too_sort = tsort
        @sort_array = Array.new
    end
    
    def add_to_sort(p_sort)
        @sort_array.push(p_sort)
    end
    
    def sort_array
        @sort_array.sort { |x,y| x <=> y }
    end
    
end

binding.pry