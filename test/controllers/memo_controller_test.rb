require 'test_helper'

class MemoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get memo_new_url
    assert_response :success
  end

end
