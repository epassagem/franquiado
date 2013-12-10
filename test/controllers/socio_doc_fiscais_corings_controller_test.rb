require 'test_helper'

class SocioDocFiscaisCoringsControllerTest < ActionController::TestCase
  setup do
    @socio_doc_fiscais_coring = socio_doc_fiscais_corings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_doc_fiscais_corings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_doc_fiscais_coring" do
    assert_difference('SocioDocFiscaisCoring.count') do
      post :create, socio_doc_fiscais_coring: { arquivo: @socio_doc_fiscais_coring.arquivo, interessado_id: @socio_doc_fiscais_coring.interessado_id, nome: @socio_doc_fiscais_coring.nome }
    end

    assert_redirected_to socio_doc_fiscais_coring_path(assigns(:socio_doc_fiscais_coring))
  end

  test "should show socio_doc_fiscais_coring" do
    get :show, id: @socio_doc_fiscais_coring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_doc_fiscais_coring
    assert_response :success
  end

  test "should update socio_doc_fiscais_coring" do
    patch :update, id: @socio_doc_fiscais_coring, socio_doc_fiscais_coring: { arquivo: @socio_doc_fiscais_coring.arquivo, interessado_id: @socio_doc_fiscais_coring.interessado_id, nome: @socio_doc_fiscais_coring.nome }
    assert_redirected_to socio_doc_fiscais_coring_path(assigns(:socio_doc_fiscais_coring))
  end

  test "should destroy socio_doc_fiscais_coring" do
    assert_difference('SocioDocFiscaisCoring.count', -1) do
      delete :destroy, id: @socio_doc_fiscais_coring
    end

    assert_redirected_to socio_doc_fiscais_corings_path
  end
end
