require 'test_helper'

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get article_view_url
    assert_response :success
  end

end
