class Api::UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :about, :avatar

  def avatar
    object.avatar.as_json[:avatar]
  end
end
