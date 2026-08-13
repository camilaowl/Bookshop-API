class Author < ApplicationRecord
  before_create :generate_slug

  has_many :book_authors, dependent: :destroy
  has_many :books, through: :book_authors

  private

  def generate_slug
    self.slug ||= name.to_s.parameterize
  end
end
