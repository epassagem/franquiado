require 'test_helper'

class LembretesControllerTest < ActionController::TestCase
  setup do
    @lembrete = lembretes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lembretes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lembrete" do
    assert_difference('Lembrete.count') do
      post :create, lembrete: { data_max: @lembrete.data_max, interessado_id: @lembrete.interessado_id, nome: @lembrete.nome, observacao: @lembrete.observacao }
    end

    assert_redirected_to lembrete_path(assigns(:lembrete))
  end

  test "should show lembrete" do
    get :show, id: @lembrete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lembrete
    assert_response :success
  end

  test "should update lembrete" do
    patch :update, id: @lembrete, lembrete: { data_max: @lembrete.data_max, interessado_id: @lembrete.interessado_id, nome: @lembrete.nome, observacao: @lembrete.observacao }
    assert_redirected_to lembrete_path(assigns(:lembrete))
  end

  test "should destroy lembrete" do
    assert_difference('Lembrete.count', -1) do
      delete :destroy, id: @lembrete
    end

    assert_redirected_to lembretes_path
  end
end
