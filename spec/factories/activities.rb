# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :activity do
    trip nil
    name "MyString"
    description "MyText"
    price 1.5
  end
end
