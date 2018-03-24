class Query
  BASE_RESOLVE_URL="http://soundcloud.com/"

  def initialize
    @client = Soundcloud.new :client_id => ENV['SC_CLIENT_ID']
  end

  def query_user(user_url)
    @user_url = user_url
    @user = @client.get('/resolve', :url => @user_url)
  end

  def get_user(username)
    @client.get('/resolve', url: BASE_RESOLVE_URL+username)
  end

end
