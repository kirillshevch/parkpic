class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  has_many :comments
  belongs_to :comment
  after_save :check_parent
  belongs_to :user

  def check_parent
    if self.comment_id && !self.commentable_type && !self.commentable_id
      parent = Comment.find(comment_id)
      self.update! commentable_type: parent.commentable_type, commentable_id: parent.commentable_id, path: "#{parent.path}.#{self.id}"
    elsif !self.path
      self.update! path: self.id
    end
  end
end
