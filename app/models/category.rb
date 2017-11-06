class Category < ApplicationRecord
  validates :name

  has_many :recipes
end
