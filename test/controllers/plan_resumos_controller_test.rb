require 'test_helper'

class PlanResumosControllerTest < ActionController::TestCase
  setup do
    @plan_resumo = plan_resumos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_resumos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_resumo" do
    assert_difference('PlanResumo.count') do
      post :create, plan_resumo: { arquivo: @plan_resumo.arquivo, interessado_id: @plan_resumo.interessado_id }
    end

    assert_redirected_to plan_resumo_path(assigns(:plan_resumo))
  end

  test "should show plan_resumo" do
    get :show, id: @plan_resumo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_resumo
    assert_response :success
  end

  test "should update plan_resumo" do
    patch :update, id: @plan_resumo, plan_resumo: { arquivo: @plan_resumo.arquivo, interessado_id: @plan_resumo.interessado_id }
    assert_redirected_to plan_resumo_path(assigns(:plan_resumo))
  end

  test "should destroy plan_resumo" do
    assert_difference('PlanResumo.count', -1) do
      delete :destroy, id: @plan_resumo
    end

    assert_redirected_to plan_resumos_path
  end
end
