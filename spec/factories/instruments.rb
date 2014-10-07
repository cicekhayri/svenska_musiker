# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :instrument do
    sequence(:instrument_name) { |index| "Instrument #{index}" }
  end
end
