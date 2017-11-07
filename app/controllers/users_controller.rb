class UsersController < ApplicationController


    def index
      user = User.find_by(id: current_user.id)
      @user_recipes = current_user.recipes
    end

    def show
      current_user
      @user_recipes = current_user.recipes
      render 'show'
    end

    def user_params
      params.require(:user).permit(:email)
    end
  end

