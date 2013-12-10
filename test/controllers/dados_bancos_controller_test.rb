require 'test_helper'

class DadosBancosControllerTest < ActionController::TestCase
  setup do
    @dados_banco = dados_bancos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dados_bancos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dados_banco" do
    assert_difference('DadosBanco.count') do
      post :create, dados_banco: { arquivo: @dados_banco.arquivo, interessado_id: @dados_banco.interessado_id }
    end

    assert_redirected_to dados_banco_path(assigns(:dados_banco))
  end

  test "should show dados_banco" do
    get :show, id: @dados_banco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dados_banco
    assert_response :success
  end

  test "should update dados_banco" do
    patch :update, id: @dados_banco, dados_banco: { arquivo: @dados_banco.arquivo, interessado_id: @dados_banco.interessado_id }
    assert_redirected_to dados_banco_path(assigns(:dados_banco))
  end

  test "should destroy dados_banco" do
    assert_difference('DadosBanco.count', -1) do
      delete :destroy, id: @dados_banco
    end

    assert_redirected_to dados_bancos_path
  end
end
