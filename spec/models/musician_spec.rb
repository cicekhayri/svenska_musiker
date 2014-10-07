require 'rails_helper'

RSpec.describe Musician, type: :model do
  
  
  context "should have personal information" do
    it "should have valid firstname" do
      musician = FactoryGirl.build(:musician)
      musician.firstname = nil
      expect(musician).not_to be_valid
    end    
    
    it "should have a valid lastname" do
      musician = FactoryGirl.build(:musician)
      musician.lastname = nil
      expect(musician).not_to be_valid
    end

    it "should have a valid birthdate" do
      musician = FactoryGirl.build(:musician)
      musician.birthdate = nil
      expect(musician).not_to be_valid
    end

    it "should have a valid link" do
      musician = FactoryGirl.build(:musician)
      musician.link = nil
      expect(musician).not_to be_valid
    end

    it "should be unique link" do
      FactoryGirl.create(:musician)
      musician = FactoryGirl.build(:musician)
      expect(musician).not_to be_valid
    end

    it "should be specialized on one instrument" do
      musician = FactoryGirl.build(:musician)
      musician.specialized_on = nil
      expect(musician).not_to be_valid
    end

  end

  
end
