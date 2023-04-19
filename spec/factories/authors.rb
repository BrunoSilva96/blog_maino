FactoryBot.define do
  factory :author do
    nickname { Faker::Name.unique.name }
    post
    comments
  end
end
