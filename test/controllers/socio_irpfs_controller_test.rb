require 'test_helper'

class SocioIrpfsControllerTest < ActionController::TestCase
  setup do
    @socio_irpf = socio_irpfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_irpfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_irpf" do
    assert_difference('SocioIrpf.count') do
      post :create, socio_irpf: { arquivo: @socio_irpf.arquivo, interessado_id: @socio_irpf.interessado_id }
    end

    assert_redirected_to socio_irpf_path(assigns(:socio_irpf))
  end

  test "should show socio_irpf" do
    get :show, id: @socio_irpf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_irpf
    assert_response :success
  end

  test "should update socio_irpf" do
    patch :update, id: @socio_irpf, socio_irpf: { arquivo: @socio_irpf.arquivo, interessado_id: @socio_irpf.interessado_id }
    assert_redirected_to socio_irpf_path(assigns(:socio_irpf))
  end

  test "should destroy socio_irpf" do
    assert_difference('SocioIrpf.count', -1) do
      delete :destroy, id: @socio_irpf
    end

    assert_redirected_to socio_irpfs_path
  end
end
