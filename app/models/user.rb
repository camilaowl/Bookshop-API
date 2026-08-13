class User < ApplicationRecord
  has_secure_password

  has_many :accounts
  has_many :orders, through: :accounts

  enum :role, {
    customer: 0,
    admin: 1
  }, default: :customer
end
