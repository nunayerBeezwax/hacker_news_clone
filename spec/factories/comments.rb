# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    statement "This coding school is so great!"
    link_id 1
  end
end
