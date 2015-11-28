class Api::CommentSerializer < ActiveModel::Serializer 
  attributes :id, :body, :comment_id, :created_at, :tread_level, :path
  has_one :user
  def tread_level
    if object.path
      object.path.split(".").count
    else
      1
    end
  end

end
