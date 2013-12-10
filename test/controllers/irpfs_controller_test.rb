require 'test_helper'

class IrpfsControllerTest < ActionController::TestCase
  setup do
    @irpf = irpfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:irpfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create irpf" do
    assert_difference('Irpf.count') do
      post :create, irpf: { arquivo: @irpf.arquivo, interessado_id: @irpf.interessado_id }
    end

    assert_redirected_to irpf_path(assigns(:irpf))
  end

  test "should show irpf" do
    get :show, id: @irpf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @irpf
    assert_response :success
  end

  test "should update irpf" do
    patch :update, id: @irpf, irpf: { arquivo: @irpf.arquivo, interessado_id: @irpf.interessado_id }
    assert_redirected_to irpf_path(assigns(:irpf))
  end

  test "should destroy irpf" do
    assert_difference('Irpf.count', -1) do
      delete :destroy, id: @irpf
    end

    assert_redirected_to irpfs_path
  end
end
