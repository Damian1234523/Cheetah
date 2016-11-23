require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get courses_index_url
    assert_response :success
  end

  test "should get create" do
    get courses_create_url
    assert_response :success
  end

  test "should get edit" do
    get courses_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get courses_destroy_url
    assert_response :success
  end

end