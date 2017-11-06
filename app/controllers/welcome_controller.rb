class WelcomeController < ApplicationController
  include UserHelper
    def index
      # binding.pry
      # current_user = User.find_by(id: session[:user_id])
      @recipes = current_user.recipes


    end
  end