require 'test_helper'

class CofsControllerTest < ActionController::TestCase
  setup do
    @cof = cofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cof" do
    assert_difference('Cof.count') do
      post :create, cof: { arquivo: @cof.arquivo, data_fim: @cof.data_fim, estatus: @cof.estatus, interessado_id: @cof.interessado_id }
    end

    assert_redirected_to cof_path(assigns(:cof))
  end

  test "should show cof" do
    get :show, id: @cof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cof
    assert_response :success
  end

  test "should update cof" do
    patch :update, id: @cof, cof: { arquivo: @cof.arquivo, data_fim: @cof.data_fim, estatus: @cof.estatus, interessado_id: @cof.interessado_id }
    assert_redirected_to cof_path(assigns(:cof))
  end

  test "should destroy cof" do
    assert_difference('Cof.count', -1) do
      delete :destroy, id: @cof
    end

    assert_redirected_to cofs_path
  end
end
