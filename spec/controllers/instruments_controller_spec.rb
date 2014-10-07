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

end
