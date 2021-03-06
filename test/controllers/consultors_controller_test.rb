require 'test_helper'

class ConsultorsControllerTest < ActionController::TestCase
  setup do
    @consultor = consultors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultor" do
    assert_difference('Consultor.count') do
      post :create, consultor: { arquivo: @consultor.arquivo, data_fim: @consultor.data_fim, interessado_id: @consultor.interessado_id, verificador: @consultor.verificador }
    end

    assert_redirected_to consultor_path(assigns(:consultor))
  end

  test "should show consultor" do
    get :show, id: @consultor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultor
    assert_response :success
  end

  test "should update consultor" do
    patch :update, id: @consultor, consultor: { arquivo: @consultor.arquivo, data_fim: @consultor.data_fim, interessado_id: @consultor.interessado_id, verificador: @consultor.verificador }
    assert_redirected_to consultor_path(assigns(:consultor))
  end

  test "should destroy consultor" do
    assert_difference('Consultor.count', -1) do
      delete :destroy, id: @consultor
    end

    assert_redirected_to consultors_path
  end
end
