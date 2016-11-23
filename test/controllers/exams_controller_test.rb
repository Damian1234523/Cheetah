require 'test_helper'

class ExamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exams_index_url
    assert_response :success
  end

  test "should get create" do
    get exams_create_url
    assert_response :success
  end

  test "should get edit" do
    get exams_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get exams_destroy_url
    assert_response :success
  end

end
