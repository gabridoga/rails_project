class UsersController < ApplicationController
  def profile
  end

  def show
    @user = User.find(params[:id])

  end

  def index
    @users=User.all
  end


end
