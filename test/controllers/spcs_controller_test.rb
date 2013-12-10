require 'test_helper'

class SpcsControllerTest < ActionController::TestCase
  setup do
    @spc = spcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spc" do
    assert_difference('Spc.count') do
      post :create, spc: { arquivo: @spc.arquivo, interessado_id: @spc.interessado_id }
    end

    assert_redirected_to spc_path(assigns(:spc))
  end

  test "should show spc" do
    get :show, id: @spc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spc
    assert_response :success
  end

  test "should update spc" do
    patch :update, id: @spc, spc: { arquivo: @spc.arquivo, interessado_id: @spc.interessado_id }
    assert_redirected_to spc_path(assigns(:spc))
  end

  test "should destroy spc" do
    assert_difference('Spc.count', -1) do
      delete :destroy, id: @spc
    end

    assert_redirected_to spcs_path
  end
end
