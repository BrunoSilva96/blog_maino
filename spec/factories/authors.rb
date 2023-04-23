# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    nickname { Faker::Name.unique.name }
    email { Faker::Internet.email }
    password { '123456' }
    password_confirmation { '123456' }
  end
end
