class Api::CommentsController < ApiController
  def index
    count = @comments.count
    @comments = @comments
      .where(commentable_id: params[:commentable_id], commentable_type: params[:commentable_type])
      .where.not(id: params[:added_comments].split("#"))
      .order(path: :asc)
    @comments = @comments.page(params[:page]).per(25)
    page = params[:page].to_i
    page = 1 unless page >= 1
    response =  { comments: { items: serialize_objects(@comments, Api::CommentSerializer), per: 25, count: count, page: page }}
    respond_with response
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    render json: serialize_object(@comment, Api::CommentSerializer)
  end

  private
  
  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type, :comment_id)
  end
end
