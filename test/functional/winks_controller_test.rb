require 'test_helper'

class WinksControllerTest < ActionController::TestCase
  setup do
    @wink = winks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:winks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wink" do
    assert_difference('Wink.count') do
      post :create, wink: @wink.attributes
    end

    assert_redirected_to wink_path(assigns(:wink))
  end

  test "should show wink" do
    get :show, id: @wink.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wink.to_param
    assert_response :success
  end

  test "should update wink" do
    put :update, id: @wink.to_param, wink: @wink.attributes
    assert_redirected_to wink_path(assigns(:wink))
  end

  test "should destroy wink" do
    assert_difference('Wink.count', -1) do
      delete :destroy, id: @wink.to_param
    end

    assert_redirected_to winks_path
  end
end
