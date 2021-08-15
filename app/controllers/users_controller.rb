class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_user, only: [:show]

  def index
    users = User.order(created_at: :desc)

    render json: users
  end

  def show
    posts = @user.posts.order(created_at: :desc)
    render json: posts
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
