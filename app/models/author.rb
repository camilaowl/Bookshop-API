class Author < ApplicationRecord
  before_validation :generate_slug, on: :create

  has_many :books, through: :book_authors
  has_many :book_authors, dependent: :destroy

  private

  def generate_slug
    self.slug ||= name.to_s.parameterize
  end
end
