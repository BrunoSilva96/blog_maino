# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    body { Faker::Lorem.paragraph }
    author

    trait :with_comments do
      comments { create(:comment, :with_comments) }
    end
  end
end
