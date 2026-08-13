require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Fields' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:text) }
    it { is_expected.to have_db_column(:slug).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:books) }
  end

  describe 'Methods' do
    let(:category) { create(:category) }

    describe '#generate_slug' do
      it 'generates a slug from the category name' do
        expect(category.slug).to eq(category.name.parameterize)
      end
    end
  end
end
