# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    message "MyText"
    read false
    previous_message_id 1
    next_message_id 1
    user nil
    from_user_id 1
  end
end
