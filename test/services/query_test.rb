require 'test_helper'

class QueryTest< ActiveSupport::TestCase
  test 'get_user' do
    sc_user_data = Query.new.get_user('lacostenyc')

    assert sc_user_data.present?
    assert sc_user_data.class == SoundCloud::HashResponseWrapper
  end
end
