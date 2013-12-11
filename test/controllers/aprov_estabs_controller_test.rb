require 'test_helper'

class AprovEstabsControllerTest < ActionController::TestCase
  setup do
    @aprov_estab = aprov_estabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aprov_estabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aprov_estab" do
    assert_difference('AprovEstab.count') do
      post :create, aprov_estab: { arquivo_doc: @aprov_estab.arquivo_doc, interessado_id: @aprov_estab.interessado_id }
    end

    assert_redirected_to aprov_estab_path(assigns(:aprov_estab))
  end

  test "should show aprov_estab" do
    get :show, id: @aprov_estab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aprov_estab
    assert_response :success
  end

  test "should update aprov_estab" do
    patch :update, id: @aprov_estab, aprov_estab: { arquivo_doc: @aprov_estab.arquivo_doc, interessado_id: @aprov_estab.interessado_id }
    assert_redirected_to aprov_estab_path(assigns(:aprov_estab))
  end

  test "should destroy aprov_estab" do
    assert_difference('AprovEstab.count', -1) do
      delete :destroy, id: @aprov_estab
    end

    assert_redirected_to aprov_estabs_path
  end
end
