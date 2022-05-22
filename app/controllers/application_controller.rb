class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    flash[:notice] = "ログインに成功しました" # <-任意で
    user_path(current_user.id)  # 指定したいパスに変更
  end

  # サインアウト後のリダイレクト先をトップページへ
  def after_sign_out_path_for(resource)
    flash[:alert] = "ログアウトしました"
    top_path
  end

  protected

    def configure_permitted_parameters
      #以下の:name部分は追加したカラム名に変える
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
  end