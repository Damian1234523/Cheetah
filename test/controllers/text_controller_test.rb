require 'test_helper'

class TextControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get text_index_url
    assert_response :redirect
  end

  test "should get create" do
    get text_create_url
    assert_response :redirect
  end

  test "should get new" do
    get text_new_url
    assert_response :redirect
  end

  test "should get show" do
    get text_show_url
    assert_response :redirect
  end

  test "should get edit" do
    get text_edit_url
    assert_response :redirect
  end

  test "should get destroy" do
    get text_destroy_url
    assert_response :redirect
  end

end
