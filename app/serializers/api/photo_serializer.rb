class Api::PhotoSerializer < ActiveModel::Serializer 
  attributes :image_url, :id
  def image_url
    object.file.url
  end
end
