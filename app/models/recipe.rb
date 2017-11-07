class Recipe < ApplicationRecord
  validates :name, :difficulty, :prep_time, :directions, :ingredients, :category, :user, presence: true

  belongs_to :user
  has_many :ratings

  def self.ingredient_search(ingredient)
    @recipes = Recipe.all
    searched_recipes = []
    @recipes.each do |recipe|
      if recipe.ingredients.include?(ingredient)
        searched_recipes << recipe
      end

    end
    return searched_recipes
  end

   def self.name_search(name)
    @recipes = Recipe.all
    searched_recipes = []
    @recipes.each do |recipe|
      if recipe.name.include?(name)
        searched_recipes << recipe
      end

    end
    return searched_recipes
  end

end
