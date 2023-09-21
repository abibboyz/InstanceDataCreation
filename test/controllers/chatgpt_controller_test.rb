require "test_helper"

class ChatgptControllerTest < ActionDispatch::IntegrationTest
  test "should get request" do
    get chatgpt_chat_request_url
    assert_response :success
  end
end
