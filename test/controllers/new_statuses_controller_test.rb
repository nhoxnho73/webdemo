require 'test_helper'

class NewStatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_statuses_index_url
    assert_response :success
  end

end
