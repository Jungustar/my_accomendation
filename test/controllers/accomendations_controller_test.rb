require 'test_helper'

class AccomendationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accomendations_index_url
    assert_response :success
  end

  test "should get create" do
    get accomendations_create_url
    assert_response :success
  end

  test "should get new" do
    get accomendations_new_url
    assert_response :success
  end

  test "should get edit" do
    get accomendations_edit_url
    assert_response :success
  end

  test "should get show" do
    get accomendations_show_url
    assert_response :success
  end

  test "should get update" do
    get accomendations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get accomendations_destroy_url
    assert_response :success
  end

end
