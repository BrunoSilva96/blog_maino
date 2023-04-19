# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    nickname { Faker::Name.unique.name }
    post
    comments
  end
end
