require 'test_helper'

class SocioCpfsControllerTest < ActionController::TestCase
  setup do
    @socio_cpf = socio_cpfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_cpfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_cpf" do
    assert_difference('SocioCpf.count') do
      post :create, socio_cpf: { arquivo: @socio_cpf.arquivo, interessado_id: @socio_cpf.interessado_id }
    end

    assert_redirected_to socio_cpf_path(assigns(:socio_cpf))
  end

  test "should show socio_cpf" do
    get :show, id: @socio_cpf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_cpf
    assert_response :success
  end

  test "should update socio_cpf" do
    patch :update, id: @socio_cpf, socio_cpf: { arquivo: @socio_cpf.arquivo, interessado_id: @socio_cpf.interessado_id }
    assert_redirected_to socio_cpf_path(assigns(:socio_cpf))
  end

  test "should destroy socio_cpf" do
    assert_difference('SocioCpf.count', -1) do
      delete :destroy, id: @socio_cpf
    end

    assert_redirected_to socio_cpfs_path
  end
end
