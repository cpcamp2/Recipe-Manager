class WelcomeController < ApplicationController
  include UserHelper
    def index
      @current_recipes = @current_user.recipes
    end
  end