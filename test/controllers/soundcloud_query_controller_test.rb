require 'test_helper'

class SoundcloudQueryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_soundcloud_query_path
    assert_response :success
  end

  test "should get index" do
    get soundcloud_queries_path
    assert_response :success
  end

  test "should get show" do
    get soundcloud_query_path(SoundcloudUser.first.id)
    assert_response :success
  end

  test "should post create" do
    post '/soundcloud_queries', params: { soundcloud_url: 'lacostenyc' }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h1", 'SoundcloudQuery#show'
  end

end
