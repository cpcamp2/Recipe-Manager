class Recipe < ApplicationRecord
  validates :name, :difficulty, :prep_time, :directions, :ingredients, :category, :user, presence: true

  belongs_to :user
  has_many :ratings

  def self.search(search)
    searched_recipes = []
    @recipes.each do |recipe|
      if recipe.ingredients.include?(search)
        searched_recipes << recipe
      end
      return searched_recipes
    end
  end

end
