require 'test_helper'

class ProjArquitetonicosControllerTest < ActionController::TestCase
  setup do
    @proj_arquitetonico = proj_arquitetonicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proj_arquitetonicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proj_arquitetonico" do
    assert_difference('ProjArquitetonico.count') do
      post :create, proj_arquitetonico: { arquivo: @proj_arquitetonico.arquivo, interessado_id: @proj_arquitetonico.interessado_id }
    end

    assert_redirected_to proj_arquitetonico_path(assigns(:proj_arquitetonico))
  end

  test "should show proj_arquitetonico" do
    get :show, id: @proj_arquitetonico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proj_arquitetonico
    assert_response :success
  end

  test "should update proj_arquitetonico" do
    patch :update, id: @proj_arquitetonico, proj_arquitetonico: { arquivo: @proj_arquitetonico.arquivo, interessado_id: @proj_arquitetonico.interessado_id }
    assert_redirected_to proj_arquitetonico_path(assigns(:proj_arquitetonico))
  end

  test "should destroy proj_arquitetonico" do
    assert_difference('ProjArquitetonico.count', -1) do
      delete :destroy, id: @proj_arquitetonico
    end

    assert_redirected_to proj_arquitetonicos_path
  end
end
