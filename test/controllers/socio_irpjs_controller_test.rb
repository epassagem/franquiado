require 'test_helper'

class SocioIrpjsControllerTest < ActionController::TestCase
  setup do
    @socio_irpj = socio_irpjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_irpjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_irpj" do
    assert_difference('SocioIrpj.count') do
      post :create, socio_irpj: { arquivo: @socio_irpj.arquivo, interessado_id: @socio_irpj.interessado_id }
    end

    assert_redirected_to socio_irpj_path(assigns(:socio_irpj))
  end

  test "should show socio_irpj" do
    get :show, id: @socio_irpj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_irpj
    assert_response :success
  end

  test "should update socio_irpj" do
    patch :update, id: @socio_irpj, socio_irpj: { arquivo: @socio_irpj.arquivo, interessado_id: @socio_irpj.interessado_id }
    assert_redirected_to socio_irpj_path(assigns(:socio_irpj))
  end

  test "should destroy socio_irpj" do
    assert_difference('SocioIrpj.count', -1) do
      delete :destroy, id: @socio_irpj
    end

    assert_redirected_to socio_irpjs_path
  end
end
