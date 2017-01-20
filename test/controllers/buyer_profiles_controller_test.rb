require 'test_helper'

class BuyerProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buyer_profiles_index_url
    assert_response :success
  end

  test "should get show" do
    get buyer_profiles_show_url
    assert_response :success
  end

  test "should get new" do
    get buyer_profiles_new_url
    assert_response :success
  end

  test "should get create" do
    get buyer_profiles_create_url
    assert_response :success
  end

  test "should get edit" do
    get buyer_profiles_edit_url
    assert_response :success
  end

  test "should get update" do
    get buyer_profiles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get buyer_profiles_destroy_url
    assert_response :success
  end

end
