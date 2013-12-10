require 'test_helper'

class RgsControllerTest < ActionController::TestCase
  setup do
    @rg = rgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rg" do
    assert_difference('Rg.count') do
      post :create, rg: { arquivo: @rg.arquivo, interessado_id: @rg.interessado_id }
    end

    assert_redirected_to rg_path(assigns(:rg))
  end

  test "should show rg" do
    get :show, id: @rg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rg
    assert_response :success
  end

  test "should update rg" do
    patch :update, id: @rg, rg: { arquivo: @rg.arquivo, interessado_id: @rg.interessado_id }
    assert_redirected_to rg_path(assigns(:rg))
  end

  test "should destroy rg" do
    assert_difference('Rg.count', -1) do
      delete :destroy, id: @rg
    end

    assert_redirected_to rgs_path
  end
end
