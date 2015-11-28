class Api::PhotosController < ApiController
  def index
    @photos = @photos.where(user_id: params[:user_id])
    params[:page] ||=1
    response = {count: @photos.count, photos: serialize_objects(@photos.page(params[:page]).per(25), Api::PhotoSerializer), page: params[:page] }
    respond_with response
  end
end
