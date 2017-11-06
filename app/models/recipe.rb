class Recipe < ApplicationRecord
  validates :name, :difficulty, :prep_time, :directions, :ingredients, :category, :user, presence: true

  belongs_to :user
  has_many :ratings

end
