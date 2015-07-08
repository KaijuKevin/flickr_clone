class PicturesController < ApplicationController
  def index
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
