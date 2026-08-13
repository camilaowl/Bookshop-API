class Category < ApplicationRecord
  before_create :generate_slug

  has_many :books

  private

  def generate_slug
    self.slug ||= name.to_s.parameterize
  end
end
