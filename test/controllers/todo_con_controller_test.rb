require "test_helper"

class TodoConControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get todo_con_index_url
    assert_response :success
  end
end
