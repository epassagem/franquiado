require 'test_helper'

class SocioCompEndsControllerTest < ActionController::TestCase
  setup do
    @socio_comp_end = socio_comp_ends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_comp_ends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_comp_end" do
    assert_difference('SocioCompEnd.count') do
      post :create, socio_comp_end: { arquivo: @socio_comp_end.arquivo, interessado_id: @socio_comp_end.interessado_id }
    end

    assert_redirected_to socio_comp_end_path(assigns(:socio_comp_end))
  end

  test "should show socio_comp_end" do
    get :show, id: @socio_comp_end
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_comp_end
    assert_response :success
  end

  test "should update socio_comp_end" do
    patch :update, id: @socio_comp_end, socio_comp_end: { arquivo: @socio_comp_end.arquivo, interessado_id: @socio_comp_end.interessado_id }
    assert_redirected_to socio_comp_end_path(assigns(:socio_comp_end))
  end

  test "should destroy socio_comp_end" do
    assert_difference('SocioCompEnd.count', -1) do
      delete :destroy, id: @socio_comp_end
    end

    assert_redirected_to socio_comp_ends_path
  end
end
