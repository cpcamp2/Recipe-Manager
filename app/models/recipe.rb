class Recipe < ApplicationRecord
  validates :name, :difficulty, :directions, :ingredients, :category, :user, presence: true
  validates :prep_time, presence: true
  validates_numericality_of :prep_time, on: :create, :greater_than_or_equal_to => 1
  
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
