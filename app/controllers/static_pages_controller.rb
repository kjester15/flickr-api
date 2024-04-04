class StaticPagesController < ApplicationController
  def index
    flickr = Flickr.new
    @photos = flickr.photos.search(user_id: params[:user_id])
  end
end