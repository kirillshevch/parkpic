class Api::UserSerializer < ActiveModel::Serializer 
  attributes :first_name, :last_name, :about, :photos, :email, :id
end
