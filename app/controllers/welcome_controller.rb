class WelcomeController < ApplicationController
  include RecipesHelper

  def index
    @recipes = Recipe.all

  end
end

