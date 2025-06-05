# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # 画面 (DeviseController) だけは未ログインでもアクセスさせる
  before_action :authenticate_user!, unless: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[postal_code address bio])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[postal_code address bio])
  end
end
