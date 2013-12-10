require 'test_helper'

class IrpjsControllerTest < ActionController::TestCase
  setup do
    @irpj = irpjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:irpjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create irpj" do
    assert_difference('Irpj.count') do
      post :create, irpj: { arquivo: @irpj.arquivo, interessado_id: @irpj.interessado_id }
    end

    assert_redirected_to irpj_path(assigns(:irpj))
  end

  test "should show irpj" do
    get :show, id: @irpj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @irpj
    assert_response :success
  end

  test "should update irpj" do
    patch :update, id: @irpj, irpj: { arquivo: @irpj.arquivo, interessado_id: @irpj.interessado_id }
    assert_redirected_to irpj_path(assigns(:irpj))
  end

  test "should destroy irpj" do
    assert_difference('Irpj.count', -1) do
      delete :destroy, id: @irpj
    end

    assert_redirected_to irpjs_path
  end
end
