require 'test_helper'

class CoordenadorsControllerTest < ActionController::TestCase
  setup do
    @coordenador = coordenadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coordenadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coordenador" do
    assert_difference('Coordenador.count') do
      post :create, coordenador: { arquivo: @coordenador.arquivo, data_fim: @coordenador.data_fim, interessado_id: @coordenador.interessado_id, verificador: @coordenador.verificador }
    end

    assert_redirected_to coordenador_path(assigns(:coordenador))
  end

  test "should show coordenador" do
    get :show, id: @coordenador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coordenador
    assert_response :success
  end

  test "should update coordenador" do
    patch :update, id: @coordenador, coordenador: { arquivo: @coordenador.arquivo, data_fim: @coordenador.data_fim, interessado_id: @coordenador.interessado_id, verificador: @coordenador.verificador }
    assert_redirected_to coordenador_path(assigns(:coordenador))
  end

  test "should destroy coordenador" do
    assert_difference('Coordenador.count', -1) do
      delete :destroy, id: @coordenador
    end

    assert_redirected_to coordenadors_path
  end
end
