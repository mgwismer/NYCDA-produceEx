require 'test_helper'

class MarketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get markets_index_url
    assert_response :success
  end

  test "should get show" do
    get markets_show_url
    assert_response :success
  end

  test "should get new" do
    get markets_new_url
    assert_response :success
  end

  test "should get edit" do
    get markets_edit_url
    assert_response :success
  end

  test "should get create" do
    get markets_create_url
    assert_response :success
  end

  test "should get update" do
    get markets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get markets_destroy_url
    assert_response :success
  end

end
