# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :startup_list do
    user
    name "Castfire"
    url "http://castfire.com"
  end
end
