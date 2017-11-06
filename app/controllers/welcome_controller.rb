class WelcomeController < ApplicationController
  include UserHelper
    def index
      @current_user
      @recipes = @current_user.recipes
    end
  end