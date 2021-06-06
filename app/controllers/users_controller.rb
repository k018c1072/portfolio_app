class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @portfolios = @user.portfolios.paginate(page: params[:page])
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  def new
  end
end
