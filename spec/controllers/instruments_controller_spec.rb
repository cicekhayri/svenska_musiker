require 'rails_helper'

RSpec.describe InstrumentsController do
  before do
    @instrument = FactoryGirl.create(:instrument)
  end

  context "index action" do
    it "should have status 200" do
      get :index
      expect(response.status).to eq(200)
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
      post :create, instrument: Instrument.new.attributes
      expect(response.status).to eq(200)
    end

    it "should save instruments to the database" do
      post :create, instrument: @instrument.attributes
      expect(Instrument.find_by_instrument_name(@instrument.instrument_name).instrument_name).to eq(@instrument.instrument_name)
    end

    it "should not save the instruments if the value is nil" do
      @instrument.instrument_name = nil
      post :create, instrument: @instrument.attributes
      expect(response).to render_template :new
    end
  end



end
