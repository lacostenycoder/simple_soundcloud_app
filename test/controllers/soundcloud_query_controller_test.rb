require 'test_helper'

class SoundcloudQueryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get soundcloud_query_new_url
    assert_response :success
  end

  test "should get index" do
    get soundcloud_query_index_url
    assert_response :success
  end

  test "should get show" do
    get soundcloud_query_show_url
    assert_response :success
  end

end
