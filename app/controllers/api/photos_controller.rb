class Api::PhotosController < ApiController
  def index
    @photos = @photos.where(user_id: params[:user_id]) if (params[:user_id])
    params[:page] ||=1
    response = {count: @photos.count, photos: serialize_objects(@photos.page(params[:page]).per(25), Api::PhotoSerializer), page: params[:page] }
    respond_with response
  end

  def show
    respond_with @photo, serializer: Api::PhotoShowSerializer
  end

  def create
    @photo = Photo.new photo_params
    @photo.user = current_user
    if @photo.save
      render json: @photo, serializer: Api::PhotoSerializer 
    else
      render json: {}
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:file, :description)
  end
end
