# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    user nil
    height 1.5
    age "9.99"
    gender ""
  end
end
