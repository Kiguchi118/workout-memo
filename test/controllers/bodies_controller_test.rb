require 'test_helper'

class BodiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bodies_new_url
    assert_response :success
  end

  test "should get show" do
    get bodies_show_url
    assert_response :success
  end

  test "should get edit" do
    get bodies_edit_url
    assert_response :success
  end

end
