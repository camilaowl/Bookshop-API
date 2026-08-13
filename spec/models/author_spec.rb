require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'Fields' do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:bio).of_type(:text) }
    it { is_expected.to have_db_column(:slug).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime) }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:book_authors).dependent(:destroy) }
    it { is_expected.to have_many(:books).through(:book_authors) }
  end

  describe 'Methods' do
    let(:author) { create(:author) }

    describe '#generate_slug' do
      it 'generates a slug from the author name' do
        slug = author.name.parameterize
        expect(author.slug).to eq(slug)
      end
    end
  end
end
