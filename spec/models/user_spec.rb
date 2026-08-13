require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Fields' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:email).of_type(:string) }
    it { is_expected.to have_db_column(:password_digest).of_type(:string) }
    it { is_expected.to have_db_column(:role).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end

  describe 'Enums' do
    it { is_expected.to define_enum_for(:role).with_values(%w[customer admin]) }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:accounts) }
    it { is_expected.to have_many(:orders).through(:accounts) }
  end
end
