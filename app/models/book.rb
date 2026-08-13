class Book < ApplicationRecord
  before_validation :generate_slug, on: :create

  belongs_to :category
  has_many :book_authors, dependent: :destroy
  has_many :authors, through: :book_authors

  private

  def generate_slug
    self.slug ||= title.to_s.parameterize
  end
end
