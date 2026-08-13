FactoryBot.define do
  factory :order do
    association :account, factory: :account
    status { 1 }
    subtotal { 9.99 }
    total { 9.99 }
  end
end
