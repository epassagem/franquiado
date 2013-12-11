require 'test_helper'

class PreContratosControllerTest < ActionController::TestCase
  setup do
    @pre_contrato = pre_contratos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pre_contratos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pre_contrato" do
    assert_difference('PreContrato.count') do
      post :create, pre_contrato: { arquivo: @pre_contrato.arquivo, interessado_id: @pre_contrato.interessado_id }
    end

    assert_redirected_to pre_contrato_path(assigns(:pre_contrato))
  end

  test "should show pre_contrato" do
    get :show, id: @pre_contrato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pre_contrato
    assert_response :success
  end

  test "should update pre_contrato" do
    patch :update, id: @pre_contrato, pre_contrato: { arquivo: @pre_contrato.arquivo, interessado_id: @pre_contrato.interessado_id }
    assert_redirected_to pre_contrato_path(assigns(:pre_contrato))
  end

  test "should destroy pre_contrato" do
    assert_difference('PreContrato.count', -1) do
      delete :destroy, id: @pre_contrato
    end

    assert_redirected_to pre_contratos_path
  end
end
