require 'test_helper'

class PhotoboothsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photobooth = photobooths(:one)
  end

  test "should get index" do
    get photobooths_url
    assert_response :success
  end

  test "should get new" do
    get new_photobooth_url
    assert_response :success
  end

  test "should create photobooth" do
    assert_difference('Photobooth.count') do
      post photobooths_url, params: { photobooth: {  } }
    end

    assert_redirected_to photobooth_url(Photobooth.last)
  end

  test "should show photobooth" do
    get photobooth_url(@photobooth)
    assert_response :success
  end

  test "should get edit" do
    get edit_photobooth_url(@photobooth)
    assert_response :success
  end

  test "should update photobooth" do
    patch photobooth_url(@photobooth), params: { photobooth: {  } }
    assert_redirected_to photobooth_url(@photobooth)
  end

  test "should destroy photobooth" do
    assert_difference('Photobooth.count', -1) do
      delete photobooth_url(@photobooth)
    end

    assert_redirected_to photobooths_url
  end
end
