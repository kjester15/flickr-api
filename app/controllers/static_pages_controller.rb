class StaticPagesController < ApplicationController
  def index
    flickr = Flickr.new "9003e2847c545cfb55f070ba8ba64e09", "0f5c9b74f9b2d307"
    @photos = flickr.photos.search(user_id: params[:user_id])
  end
end