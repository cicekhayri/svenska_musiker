require 'rails_helper'

RSpec.describe MusiciansController do
  before do
    @musician = FactoryGirl.create(:musician)
  end

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
    it "should have status 200" do
      post :create, musician: Musician.new.attributes
      expect(response.status).to eq(200)
    end

    it "should save musician information to the database" do
      post :create, musician: @musician.attributes     
      expect(Musician.find_by_lastname(@musician.lastname).lastname).to eq(@musician.lastname)
      expect(Musician.find_by_lastname(@musician.lastname).firstname).to eq(@musician.firstname)
      expect(Musician.find_by_lastname(@musician.lastname).birthdate).to eq(@musician.birthdate)
      expect(Musician.find_by_lastname(@musician.lastname).link).to eq(@musician.link)
    end

    it "should not get saved to the db if the value is nil" do
      @musician.firstname = nil

      post :create, musician: @musician.attributes
      expect(response).to render_template :new
    end

  end

  context "show action" do
    it "should render the show view" do
      get :show, id: @musician.id
      expect(response.status).to render_template :show
    end

    it "should get the musician" do
      get :show, id: @musician.id
      expect(assigns(:musician)).to eq(@musician)
    end
  end

  context "edit action" do
    it 'should render the edit view do' do
      get :edit, id: @musician
      expect(response.status).to render_template :edit
    end
  end
  
  context "update action" do
    it "should redirect to the show action when success" do
      put :update, {id: @musician.id, :musician => @musician.attributes}
      expect(response.status).to eq(302)
    end

    it "should update the musician information and save to the database" do
      @musician.firstname = "Vakz"
      put :update, {id: @musician.id, musician: @musician.attributes}
      expect(@musician.firstname).to eq(@musician.firstname)
    end 

    it "should redirect back to the edit form if the information is not valid" do
      @musician.firstname = nil
      put :update, {id: @musician.id, musician: @musician.attributes}
     
      expect(response).to render_template :edit
    end
  end

  context "destroy action" do
    it "should delete the user and redirect to the root of the app" do
      delete :destroy, id: @musician.id 
      expect(response.status).to eq(302)
    end
  end

end
