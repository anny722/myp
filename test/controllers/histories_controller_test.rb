require 'test_helper'

class HistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get histories_index_url
    assert_response :success
  end

  test "should get new" do
    get histories_new_url
    assert_response :success
  end

  test "should get edit" do
    get histories_edit_url
    assert_response :success
  end

end
