describe "The Family Member Class" do
    it "should inherit from person" do
        #Parent
         person = Person.new("joe", "bloggs", "1 Jan 1990")
        #Child
        person = FamilyMember.new("Babby", "brooks", "8 Mar 1967")
        
        specify {FamilyMember.should be < Person}
    end

    it "should add relationship status" do
        person = FamilyMember.new("Babby", "brooks", "8 Mar 1967")
        
      expect  
    end
end