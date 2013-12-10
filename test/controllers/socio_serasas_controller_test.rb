require 'test_helper'

class SocioSerasasControllerTest < ActionController::TestCase
  setup do
    @socio_serasa = socio_serasas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_serasas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_serasa" do
    assert_difference('SocioSerasa.count') do
      post :create, socio_serasa: { arquivo: @socio_serasa.arquivo, interessado_id: @socio_serasa.interessado_id }
    end

    assert_redirected_to socio_serasa_path(assigns(:socio_serasa))
  end

  test "should show socio_serasa" do
    get :show, id: @socio_serasa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_serasa
    assert_response :success
  end

  test "should update socio_serasa" do
    patch :update, id: @socio_serasa, socio_serasa: { arquivo: @socio_serasa.arquivo, interessado_id: @socio_serasa.interessado_id }
    assert_redirected_to socio_serasa_path(assigns(:socio_serasa))
  end

  test "should destroy socio_serasa" do
    assert_difference('SocioSerasa.count', -1) do
      delete :destroy, id: @socio_serasa
    end

    assert_redirected_to socio_serasas_path
  end
end
