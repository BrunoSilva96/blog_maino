FactoryBot.define do
  factory :post do
    body { Faker::Lorem }
    user { nil }
  end
end
