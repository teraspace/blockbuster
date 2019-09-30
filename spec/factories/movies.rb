FactoryGirl.define do 
  factory :movie do
    name 'a' * 20
    producer 'a' * 20
    country 'a' * 20
    synopsis 'a' * 20
    user
  end
end

