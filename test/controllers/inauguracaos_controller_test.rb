require 'test_helper'

class InauguracaosControllerTest < ActionController::TestCase
  setup do
    @inauguracao = inauguracaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inauguracaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inauguracao" do
    assert_difference('Inauguracao.count') do
      post :create, inauguracao: { arquivo_doc: @inauguracao.arquivo_doc, data_end: @inauguracao.data_end, data_start: @inauguracao.data_start, interessado_id: @inauguracao.interessado_id }
    end

    assert_redirected_to inauguracao_path(assigns(:inauguracao))
  end

  test "should show inauguracao" do
    get :show, id: @inauguracao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inauguracao
    assert_response :success
  end

  test "should update inauguracao" do
    patch :update, id: @inauguracao, inauguracao: { arquivo_doc: @inauguracao.arquivo_doc, data_end: @inauguracao.data_end, data_start: @inauguracao.data_start, interessado_id: @inauguracao.interessado_id }
    assert_redirected_to inauguracao_path(assigns(:inauguracao))
  end

  test "should destroy inauguracao" do
    assert_difference('Inauguracao.count', -1) do
      delete :destroy, id: @inauguracao
    end

    assert_redirected_to inauguracaos_path
  end
end
