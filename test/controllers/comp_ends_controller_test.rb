require 'test_helper'

class CompEndsControllerTest < ActionController::TestCase
  setup do
    @comp_end = comp_ends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comp_ends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comp_end" do
    assert_difference('CompEnd.count') do
      post :create, comp_end: { arquivo: @comp_end.arquivo, interessado_id: @comp_end.interessado_id }
    end

    assert_redirected_to comp_end_path(assigns(:comp_end))
  end

  test "should show comp_end" do
    get :show, id: @comp_end
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comp_end
    assert_response :success
  end

  test "should update comp_end" do
    patch :update, id: @comp_end, comp_end: { arquivo: @comp_end.arquivo, interessado_id: @comp_end.interessado_id }
    assert_redirected_to comp_end_path(assigns(:comp_end))
  end

  test "should destroy comp_end" do
    assert_difference('CompEnd.count', -1) do
      delete :destroy, id: @comp_end
    end

    assert_redirected_to comp_ends_path
  end
end
