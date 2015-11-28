class Api::UsersController < ApiController
  def index;
    respond_with @users.page(params[:page]).per(32)
  end

  def show
    respond with @user
  end
end
