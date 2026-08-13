FactoryBot.define do
  factory :book do
    category { nil }
    title { "MyString" }
    description { "MyText" }
    slug { "MyString" }
  end
end
