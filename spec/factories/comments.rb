# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    note { Faker::Lorem.paragraph }
    author
    post
  end
end
