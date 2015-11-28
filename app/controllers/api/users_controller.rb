class Api::UsersController < ApiController
  def index;
    respond_with @users.page(params[:page]).per(32)
  end

  def update
    debugger
    respond_with @user.update(user_params)
  end

  def show
    respond with @user
  end

  private

  def user_params
    params[:user].delete(:password) if params[:user][:password].blank?

    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :avatar,
      :about
    )
  end
end
