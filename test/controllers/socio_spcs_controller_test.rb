require 'test_helper'

class SocioSpcsControllerTest < ActionController::TestCase
  setup do
    @socio_spc = socio_spcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_spcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_spc" do
    assert_difference('SocioSpc.count') do
      post :create, socio_spc: { arquivo: @socio_spc.arquivo, interessado_id: @socio_spc.interessado_id }
    end

    assert_redirected_to socio_spc_path(assigns(:socio_spc))
  end

  test "should show socio_spc" do
    get :show, id: @socio_spc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_spc
    assert_response :success
  end

  test "should update socio_spc" do
    patch :update, id: @socio_spc, socio_spc: { arquivo: @socio_spc.arquivo, interessado_id: @socio_spc.interessado_id }
    assert_redirected_to socio_spc_path(assigns(:socio_spc))
  end

  test "should destroy socio_spc" do
    assert_difference('SocioSpc.count', -1) do
      delete :destroy, id: @socio_spc
    end

    assert_redirected_to socio_spcs_path
  end
end
