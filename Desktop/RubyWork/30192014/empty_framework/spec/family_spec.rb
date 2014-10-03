require 'spec_helper'

describe "The Family Member Class" do
    it "should inherit from person" do
        #Parent
         p_parent = Person.new("joe", "bloggs", "1 Jan 1990")
        #Child
        c_fm = FamilyMember.new("Babby", "brooks", "8 Mar 1967")
        # this check to see if the FamilyMember(c_fm) is a class of Person
        expect(c_fm.is_a? Person)

    end
end