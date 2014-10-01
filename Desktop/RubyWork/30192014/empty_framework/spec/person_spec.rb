require 'spec_helper'
require 'date'

describe "The person class" do
   it "should store basic details" do
       person = Person.new("Joe", "Bloggs", "1 Jan 1990")
       expected_date = Date.parse("1 Jan 1990")
       
       expect(person.dob).to eq(expected_date)  
       expect(person.first_name).to eq("Joe")
       expect(person.surname).to eq("Bloggs")
       expect(person.fullname).to eq("Joe Bloggs")
   end
    
    it "should store emails" do
        person = Person.new("joe", "bloggs", "1 Jan 1990")
        expect(person.emails).to eq([])
        
        person.add_email "joe@foo.com"
        person.add_email "joe.bloggs@work"
        
        expect(person.emails).to eq(["joe@foo.com", "joe.bloggs@work"])
    end
    
    it "should store phone numbers" do
         person = Person.new("joe", "bloggs", "1 Jan 1990")
        expect(person.phone_number).to eq([])
        
        person.add_phone "07894555555"
        person.add_phone "09876555333"
        
        expect(person.phone_number).to eq(["07894555555",  "09876555333"])
    end
    
    it "should remove email" do
        person = Person.new("joe", "bloggs", "1 Jan 1990")
        
        person.add_email "joe@foo.com"
        
        person.remove_email 0
          
        expect(person.emails).to eq([])
    end
    
    # exercise 2 to be done Q2
    
    # Q3
       
end
