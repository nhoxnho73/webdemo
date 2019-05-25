require 'test_helper'

class NewDiscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_discriptions_index_url
    assert_response :success
  end

end
