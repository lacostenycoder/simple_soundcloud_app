class SoundcloudQueriesController < ApplicationController
  def new

  end

  def index
  end

  def create
    @soundcloud_url = params[:soundcloud_url] 
    @soundcloud_url = "YOYOYOYO #{@soundcloud_url}"
  end

  def show
  end
end
