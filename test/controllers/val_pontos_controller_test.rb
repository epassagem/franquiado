require 'test_helper'

class ValPontosControllerTest < ActionController::TestCase
  setup do
    @val_ponto = val_pontos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:val_pontos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create val_ponto" do
    assert_difference('ValPonto.count') do
      post :create, val_ponto: { arquivo: @val_ponto.arquivo, interessado_id: @val_ponto.interessado_id }
    end

    assert_redirected_to val_ponto_path(assigns(:val_ponto))
  end

  test "should show val_ponto" do
    get :show, id: @val_ponto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @val_ponto
    assert_response :success
  end

  test "should update val_ponto" do
    patch :update, id: @val_ponto, val_ponto: { arquivo: @val_ponto.arquivo, interessado_id: @val_ponto.interessado_id }
    assert_redirected_to val_ponto_path(assigns(:val_ponto))
  end

  test "should destroy val_ponto" do
    assert_difference('ValPonto.count', -1) do
      delete :destroy, id: @val_ponto
    end

    assert_redirected_to val_pontos_path
  end
end
