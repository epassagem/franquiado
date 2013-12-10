require 'test_helper'

class SerasasControllerTest < ActionController::TestCase
  setup do
    @serasa = serasas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serasas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serasa" do
    assert_difference('Serasa.count') do
      post :create, serasa: { arquivo: @serasa.arquivo, interessado_id: @serasa.interessado_id }
    end

    assert_redirected_to serasa_path(assigns(:serasa))
  end

  test "should show serasa" do
    get :show, id: @serasa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serasa
    assert_response :success
  end

  test "should update serasa" do
    patch :update, id: @serasa, serasa: { arquivo: @serasa.arquivo, interessado_id: @serasa.interessado_id }
    assert_redirected_to serasa_path(assigns(:serasa))
  end

  test "should destroy serasa" do
    assert_difference('Serasa.count', -1) do
      delete :destroy, id: @serasa
    end

    assert_redirected_to serasas_path
  end
end
