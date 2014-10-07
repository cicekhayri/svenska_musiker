FactoryGirl.define do
  factory :musician do
    sequence(:firstname) { |index| "Person #{index}" }
    lastname 'Cicek'
    birthdate '1983-03-01'
    link 'http://hoshilab.com'
  
    specialized_on "composer" 
  end
end
