class WelcomeController < ApplicationController

    def index
      @recipes = Recipe.limit(5)

    end
  end
