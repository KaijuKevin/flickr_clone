class PicturesController < ApplicationController
  load_and_authorize_resource
  
  def index
    @pictures = current_user.pictures.all.page(params[:page]).per(1)
  end

  def new
    @pictures = Picture.new
end

def create
  @picture = current_user.pictures.new(picture_params)
  if @picture.save
    redirect_to user_pictures_path
  end
end

private

def picture_params
  params.require(:picture).permit(:image)
end
end
