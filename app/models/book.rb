class Book < ApplicationRecord
  before_create :generate_slug

  belongs_to :category
  has_many :book_authors, dependent: :destroy
  has_many :authors, through: :book_authors

  private

  def generate_slug
    self.slug ||= title.to_s.parameterize
  end
end
