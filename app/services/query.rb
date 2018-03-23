class Query
  def initialize
    @client = Soundcloud.new(:client_id => API_KEY)
  end

  def query_user(user_url)
    @user_url = user_url
    @user = @client.get('/resolve', :url => @user_url)
  end
end
