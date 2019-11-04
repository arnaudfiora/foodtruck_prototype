require 'test_helper'

class FoodtrucksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foodtrucks_index_url
    assert_response :success
  end

  test "should get show" do
    get foodtrucks_show_url
    assert_response :success
  end

  test "should get new" do
    get foodtrucks_new_url
    assert_response :success
  end

  test "should get create" do
    get foodtrucks_create_url
    assert_response :success
  end

  test "should get update" do
    get foodtrucks_update_url
    assert_response :success
  end

end
