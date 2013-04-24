# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    name "The day of Noel's Birth"
    description "Watch Noel's Birthday"
    start_date "1971-01-22"
    end_date "1971-01-23"
    image_name "baby.png"
    tag_line "Why?"
    price 100
    location "Illinois"
    activity "Watching Things"
  end
end
