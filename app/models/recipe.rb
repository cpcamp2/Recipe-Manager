class Recipe < ApplicationRecord
  validates :name, :difficulty, :prep_time, :directions, :ingredients, :category, :user, presence: true

  belongs_to :user
  has_many :ratings

  paginates_per 10

  def self.ingredient_search(ingredient)
    return Recipe.where("ingredients ILIKE ?", "%#{ingredient}%")
  end

  #  def self.name_search(name)
  #  return Recipe.where("ingredients ILIKE ?", "%#{name}%")
  # end

end
