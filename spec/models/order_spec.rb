require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'Fields' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:account_id).of_type(:integer) }
    it { is_expected.to have_db_column(:status).of_type(:integer) }
    it { is_expected.to have_db_column(:subtotal).of_type(:decimal) }
    it { is_expected.to have_db_column(:total).of_type(:decimal) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end

  describe 'Enums' do
    it { is_expected.to define_enum_for(:status).with_values(%w[pending processing paid confirmed failed canceled]) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:account) }
    it { is_expected.to have_many(:order_items) }
  end
end
