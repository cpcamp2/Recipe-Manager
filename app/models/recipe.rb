class Recipe < ApplicationRecord
  validates :name, :difficulty, :prep_time, :directions, :ingredients, presence: true

  belongs_to :user
  belongs_to :category
end
