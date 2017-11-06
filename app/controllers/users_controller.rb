class UsersController < ApplicationController

    def index
      @recipes = current_user.recipes
    end

    def show

    end

    def new
      @user = User.new
    end

    def create
      end
  end