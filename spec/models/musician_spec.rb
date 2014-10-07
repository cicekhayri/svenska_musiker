require 'rails_helper'

RSpec.describe Musician, type: :model do
  
  
  context "should have personal information" do
    it "should have valid firstname" do
      musician = Musician.new(firstname: nil)
      expect(musician).not_to be_valid
    end    
    
    it "should have a valid lastname" do
      musician = Musician.new(lastname: nil, firstname: "Hayri")
      expect(musician).not_to be_valid
    end

    it "should have a valid birthdate" do
      musician = Musician.new(birthdate: nil, firstname: "Hayri", lastname: "Cicek")
      expect(musician).not_to be_valid
    end

    it "should have a valid link" do
      musician = Musician.new(link: nil, firstname: "Hayri", lastname: "Cicek", birthdate: "1983-03-01")
      expect(musician).not_to be_valid
    end

  end

  
end
