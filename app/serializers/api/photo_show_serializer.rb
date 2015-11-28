class Api::PhotoShowSerializer < ActiveModel::Serializer 
  attributes :id, :image_url, :short_text
  def image_url
    object.file.large.url
  end
end
