require 'test_helper'

class SocioCnhsControllerTest < ActionController::TestCase
  setup do
    @socio_cnh = socio_cnhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_cnhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_cnh" do
    assert_difference('SocioCnh.count') do
      post :create, socio_cnh: { arquivo: @socio_cnh.arquivo, interessado_id: @socio_cnh.interessado_id }
    end

    assert_redirected_to socio_cnh_path(assigns(:socio_cnh))
  end

  test "should show socio_cnh" do
    get :show, id: @socio_cnh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_cnh
    assert_response :success
  end

  test "should update socio_cnh" do
    patch :update, id: @socio_cnh, socio_cnh: { arquivo: @socio_cnh.arquivo, interessado_id: @socio_cnh.interessado_id }
    assert_redirected_to socio_cnh_path(assigns(:socio_cnh))
  end

  test "should destroy socio_cnh" do
    assert_difference('SocioCnh.count', -1) do
      delete :destroy, id: @socio_cnh
    end

    assert_redirected_to socio_cnhs_path
  end
end
