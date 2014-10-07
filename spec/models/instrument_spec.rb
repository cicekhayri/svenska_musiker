require 'rails_helper'

RSpec.describe Instrument do

  it "should not have a invalid input for instruments" do
    instrument = FactoryGirl.build(:instrument)
    instrument.instrument_name = nil
    expect(instrument).not_to be_valid
  end
end
