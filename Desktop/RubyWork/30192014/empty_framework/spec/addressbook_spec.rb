require 'spec_helper'

describe "The address book class" do
    it "should add a new adress book" do
        person1 = Person.new("joe", "blogs", "1 Jan 1990")
        person2 = Person.new("andy", "nother", "2 Jan 1995")
        book = AddressBook.new
        
        expect(book.entries).to eq([])
        
        book.add person1
        book.add person2
        
        expect(book.list).to eq([person1, person2])        
    end
  
    it "should load up Yaml into address book" do
        book = AddressBook.new
        
        expect(book.entries).to eq([])
        
        book.load_yaml "people_data.yml"
                
        expect(book.data[:people].length).to eq(2)
    end
    
    it "should add entries into an AddressBook object" do
        book = AddressBook.new
        
        book.load_yaml "people_data.yml"
        
        expect(book.data[:people][0][:fname]).to eq("Joe")
    end
end