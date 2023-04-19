FactoryBot.define do
  factory :comment do
    note { "MyText" }
    author { nil }
    post { nil }
  end
end
