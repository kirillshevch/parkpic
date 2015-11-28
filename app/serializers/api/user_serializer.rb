class Api::UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :about, :photos, :email, :id, :avatar

  def avatar
    object.avatar
  end
end
