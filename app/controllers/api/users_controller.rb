class Api::UsersController < Api::ApiController
  before_action :get_user
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new_session
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      if user.regenerate_token
        result = { :result => "true", :user => user}
        render json: result
      else
        result = { :result => "false", :message => "Expired token"}
        render json: result
      end
    else
      result = { :result => "false", :message => "Invalid username or password"}
      render json: result
    end
  end

  def log_out
    result = { :success => "true", :user => {}}
    render :json => result
  end

  def create
    user = User.new(user_params)
      if user.save
        result  = { :result => "true", :user => user}
        render :json => result
      else
        result = { :result => "false", :message => user.errors.full_messages}
        render :json => result
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :token,:password, :password_confirmation, :confirm_token, :email_confirmed)
    end
end
