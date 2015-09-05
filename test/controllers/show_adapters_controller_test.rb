require 'test_helper'

class ShowAdaptersControllerTest < ActionController::TestCase
  setup do
    @show_adapter = show_adapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:show_adapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create show_adapter" do
    assert_difference('ShowAdapter.count') do
      post :create, show_adapter: {  }
    end

    assert_redirected_to show_adapter_path(assigns(:show_adapter))
  end

  test "should show show_adapter" do
    get :show, id: @show_adapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @show_adapter
    assert_response :success
  end

  test "should update show_adapter" do
    patch :update, id: @show_adapter, show_adapter: {  }
    assert_redirected_to show_adapter_path(assigns(:show_adapter))
  end

  test "should destroy show_adapter" do
    assert_difference('ShowAdapter.count', -1) do
      delete :destroy, id: @show_adapter
    end

    assert_redirected_to show_adapters_path
  end
end
