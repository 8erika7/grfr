require 'test_helper'

class FreegraphersControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get freegraphers_list_url
    assert_response :success
  end

  test "should get show" do
    get freegraphers_show_url
    assert_response :success
  end

  test "should get new" do
    get freegraphers_new_url
    assert_response :success
  end

  test "should get create" do
    get freegraphers_create_url
    assert_response :success
  end

  test "should get edit" do
    get freegraphers_edit_url
    assert_response :success
  end

  test "should get update" do
    get freegraphers_update_url
    assert_response :success
  end

  test "should get delete" do
    get freegraphers_delete_url
    assert_response :success
  end

end
