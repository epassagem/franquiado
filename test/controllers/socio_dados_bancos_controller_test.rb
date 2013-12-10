require 'test_helper'

class SocioDadosBancosControllerTest < ActionController::TestCase
  setup do
    @socio_dados_banco = socio_dados_bancos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_dados_bancos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_dados_banco" do
    assert_difference('SocioDadosBanco.count') do
      post :create, socio_dados_banco: { arquivo: @socio_dados_banco.arquivo, interessado_id: @socio_dados_banco.interessado_id }
    end

    assert_redirected_to socio_dados_banco_path(assigns(:socio_dados_banco))
  end

  test "should show socio_dados_banco" do
    get :show, id: @socio_dados_banco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_dados_banco
    assert_response :success
  end

  test "should update socio_dados_banco" do
    patch :update, id: @socio_dados_banco, socio_dados_banco: { arquivo: @socio_dados_banco.arquivo, interessado_id: @socio_dados_banco.interessado_id }
    assert_redirected_to socio_dados_banco_path(assigns(:socio_dados_banco))
  end

  test "should destroy socio_dados_banco" do
    assert_difference('SocioDadosBanco.count', -1) do
      delete :destroy, id: @socio_dados_banco
    end

    assert_redirected_to socio_dados_bancos_path
  end
end
