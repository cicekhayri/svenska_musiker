require 'rails_helper'

RSpec.describe MusiciansController do
  
  context "index action" do
    it "should have status 200" do
      get :index
      expect(response.status).to eq(200)
    end

    it "should list all the musicians" do
      musicians = Musician.all
      get :index
      expect(assigns(:musicians)).to eq(musicians)
    end
  end

  context "new action" do
    it "should have status 200" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  context "create action" do
    it "should have status 302" do
      post :create, musician: Musician.new.attributes
      expect(response.status).to eq(302)
    end

    it "should save musician information to the database" do
      musician = Musician.new(firstname: "Hayri", lastname: "Cicek", birthdate: "1983-03-01", link: "http://hoshilab.com")
      post :create, musician: musician.attributes     
      expect(Musician.find_by_lastname("Cicek").lastname).to eq(musician.lastname)
      expect(Musician.find_by_lastname("Cicek").firstname).to eq(musician.firstname)
      expect(Musician.find_by_lastname("Cicek").birthdate).to eq(musician.birthdate)
      expect(Musician.find_by_lastname("Cicek").link).to eq(musician.link)
    end
  end

end
