module RecipesHelper

  def recipes_sort(recipes)
    recipes.sort_by {|recipe| recipe.ratings.average(:score)}
  end
end
