require 'test_helper'

class CpfsControllerTest < ActionController::TestCase
  setup do
    @cpf = cpfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpf" do
    assert_difference('Cpf.count') do
      post :create, cpf: { arquivo: @cpf.arquivo, interessado_id: @cpf.interessado_id }
    end

    assert_redirected_to cpf_path(assigns(:cpf))
  end

  test "should show cpf" do
    get :show, id: @cpf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpf
    assert_response :success
  end

  test "should update cpf" do
    patch :update, id: @cpf, cpf: { arquivo: @cpf.arquivo, interessado_id: @cpf.interessado_id }
    assert_redirected_to cpf_path(assigns(:cpf))
  end

  test "should destroy cpf" do
    assert_difference('Cpf.count', -1) do
      delete :destroy, id: @cpf
    end

    assert_redirected_to cpfs_path
  end
end
