class Api::ApiController < ApplicationController

  protect_from_forgery with: :null_session

  def get_user
    if User.exists?(token: params[:user][:token])
      @user = User.find_by(token: params[:user][:token])
    else
      result = { :result => "false", :is_valid_token => "false", :message => "Invalid Token"}
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
