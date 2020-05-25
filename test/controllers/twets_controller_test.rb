require 'test_helper'

class TwetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twet = twets(:one)
  end

  test "should get index" do
    get twets_url
    assert_response :success
  end

  test "should get new" do
    get new_twet_url
    assert_response :success
  end

  test "should create twet" do
    assert_difference('Twet.count') do
      post twets_url, params: { twet: { twet: @twet.twet } }
    end

    assert_redirected_to twet_url(Twet.last)
  end

  test "should show twet" do
    get twet_url(@twet)
    assert_response :success
  end

  test "should get edit" do
    get edit_twet_url(@twet)
    assert_response :success
  end

  test "should update twet" do
    patch twet_url(@twet), params: { twet: { twet: @twet.twet } }
    assert_redirected_to twet_url(@twet)
  end

  test "should destroy twet" do
    assert_difference('Twet.count', -1) do
      delete twet_url(@twet)
    end

    assert_redirected_to twets_url
  end
end
