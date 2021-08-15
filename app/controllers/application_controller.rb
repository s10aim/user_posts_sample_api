class ApplicationController < ActionController::API
  before_action :authenticate_user!

  private

  def current_user
    # 実際にはログインしている本人のユーザーを取得
    # (ログインしていない場合は nil)
    @current_user ||= User.first
  end

  def authenticate_user!
    return if current_user.present?

    render status: :unauthorized
  end
end
