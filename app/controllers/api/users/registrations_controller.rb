class Users::RegistrationsController < Devise::RegistrationsController
  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    if params[:user][:password].blank?
      resource_updated = resource.update(account_update_params)
    else
      resource_updated = resource.update_with_password(account_update_params)
    end
    if resource_updated
      sign_in resource_name, resource, bypass: true
      render json: resource, status: :ok
    else
      render json: { errors: resource.errors }, status: :unprocessable_entity
    end
  end

  protected

  def account_update_params
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
