class Api::PhotoSerializer < ActiveModel::Serializer 
  attributes :image_url
  def image_url
    object.file.url
  end
end
