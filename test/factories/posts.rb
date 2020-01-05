FactoryBot.define do
  factory :post do
    title { Faker::Music.band }
    content {Faker::Movie.quote}
    user
  end
end
