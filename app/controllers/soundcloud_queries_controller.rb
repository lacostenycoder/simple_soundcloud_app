class SoundcloudQueriesController < ApplicationController
  def new

  end

  def index
    @user = SoundcloudUser.find(3)
    @user_hash = YAML::load(@user.user_hash)
  end

  def create
    @user_url = params[:soundcloud_url]
    @soundcloud_user = SoundcloudUser.new
    @query = Query.new
    @user = @query.query_user(@user_url)
    @soundcloud_user.user_name = @user.username
    @soundcloud_user.user_hash = @user
    @soundcloud_user.save
  end

  def show

  end
end
