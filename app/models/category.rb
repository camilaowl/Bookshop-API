class Category < ApplicationRecord
  before_validation :generate_slug, on: :create

  has_many :books

  private

  def generate_slug
    self.slug ||= name.to_s.parameterize
  end
end
