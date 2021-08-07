class ApplicationController < ActionController::API
  def current_user
    # 実際にはログインしている本人のユーザーを取得
    # （ログインしていない場合は nil）
    User.find_by(id: 1)
  end
end
