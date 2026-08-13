FactoryBot.define do
  factory :book do
    association :category, factory: :category
    title { FFaker::Book.title }
    description { FFaker::Lorem.paragraph }
    price { 9.99 }
    stock { 1 }
  end
end
