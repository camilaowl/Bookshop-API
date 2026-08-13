class Order < ApplicationRecord
  belongs_to :account
  has_many :order_items

  enum :status, {
    pending: 0,
    processing: 1,
    paid: 2,
    confirmed: 3,
    failed: 4,
    canceled: 5
  }, default: :pending
end
