class Api::UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :about, :photos, :email, :id, :avatar

  def avatar
    if object.avatar
      object.avatar.medium.url
    else
      nil
    end
  end
end
