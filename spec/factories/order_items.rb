FactoryBot.define do
  factory :order_item do
    association :order, factory: :order
    book { FFaker::Book.title }
    quantity { 1 }
    unit_price { 9.99 }
  end
end
