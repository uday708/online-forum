FactoryBot.define do
  factory :user do
    username { Faker::Name.first_name }
    email { Faker::Internet.email }
    password { "example@123" }
  end
end
