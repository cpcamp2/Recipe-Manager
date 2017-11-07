class WelcomeController < ApplicationController
  # include UserHelper
    def index
      @recipes = Recipe.limit(5)
    end
  end