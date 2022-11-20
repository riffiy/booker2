class UsersController < ApplicationController
  def index
  end

  def show
     @user = User.new
  end

  def edit
  end
end
