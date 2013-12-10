require 'test_helper'

class SocioRgsControllerTest < ActionController::TestCase
  setup do
    @socio_rg = socio_rgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_rgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_rg" do
    assert_difference('SocioRg.count') do
      post :create, socio_rg: { arquivo: @socio_rg.arquivo, interessado_id: @socio_rg.interessado_id }
    end

    assert_redirected_to socio_rg_path(assigns(:socio_rg))
  end

  test "should show socio_rg" do
    get :show, id: @socio_rg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_rg
    assert_response :success
  end

  test "should update socio_rg" do
    patch :update, id: @socio_rg, socio_rg: { arquivo: @socio_rg.arquivo, interessado_id: @socio_rg.interessado_id }
    assert_redirected_to socio_rg_path(assigns(:socio_rg))
  end

  test "should destroy socio_rg" do
    assert_difference('SocioRg.count', -1) do
      delete :destroy, id: @socio_rg
    end

    assert_redirected_to socio_rgs_path
  end
end
