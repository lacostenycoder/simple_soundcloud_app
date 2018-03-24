class SoundcloudQueriesController < ApplicationController
  def new

  end

  def index
    @user = SoundcloudUser.all
  end

  def create
    sc_user_data = Query.new.get_user params[:username]
    @soundcloud_user = SoundcloudUser.create
      { user_name: sc_user_data[:username],
        user_hash: JSON.parse(sc_user_data.to_json).symbolize_keys}
  end

  def show
    @soundcloud_user = SoundcloudUser.find params[:id]
  end
end
