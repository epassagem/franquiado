require 'test_helper'

class DocsPontosControllerTest < ActionController::TestCase
  setup do
    @docs_ponto = docs_pontos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docs_pontos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docs_ponto" do
    assert_difference('DocsPonto.count') do
      post :create, docs_ponto: { arquivo: @docs_ponto.arquivo, interessado_id: @docs_ponto.interessado_id, nome: @docs_ponto.nome }
    end

    assert_redirected_to docs_ponto_path(assigns(:docs_ponto))
  end

  test "should show docs_ponto" do
    get :show, id: @docs_ponto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @docs_ponto
    assert_response :success
  end

  test "should update docs_ponto" do
    patch :update, id: @docs_ponto, docs_ponto: { arquivo: @docs_ponto.arquivo, interessado_id: @docs_ponto.interessado_id, nome: @docs_ponto.nome }
    assert_redirected_to docs_ponto_path(assigns(:docs_ponto))
  end

  test "should destroy docs_ponto" do
    assert_difference('DocsPonto.count', -1) do
      delete :destroy, id: @docs_ponto
    end

    assert_redirected_to docs_pontos_path
  end
end
