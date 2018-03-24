class SoundcloudQueriesController < ApplicationController
  def new

  end

  def index
    @users = SoundcloudUser.all
  end

  def create
    sc_user_data = Query.new.get_user(parse_params[:username]).symbolize_keys
    @soundcloud_user = SoundcloudUser.new(
      { user_name: sc_user_data[:username],
        user_hash: JSON.parse(sc_user_data.to_json).symbolize_keys})
    if @soundcloud_user.save
      redirect_to soundcloud_query_path(@soundcloud_user.id)
    else
      redirect_to root_path
    end
  end

  def show
    @soundcloud_user = SoundcloudUser.find params[:id]
  end

  private

    def soundcloud_query_params
      params.require(:soundcloud_url).permit(:username)
    end

    def parse_params
      if params[:soundcloud_url].include?('http')
        params[:username] = params[:soundcloud_url].split('/').last
      else
        params[:username] = params[:soundcloud_url]
      end
      params
    end
end
