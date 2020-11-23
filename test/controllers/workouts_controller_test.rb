require 'test_helper'

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get workouts_show_url
    assert_response :success
  end

  test "should get edit" do
    get workouts_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get workouts_destroy_url
    assert_response :success
  end

end
