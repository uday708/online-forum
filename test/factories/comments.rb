FactoryBot.define do
  factory :comment do
    message {Faker::ChuckNorris.fact}
    user

    trait :post_comment do
      association(:for_comment, factory: :post)
    end
  end
end
