require 'test_helper'

class DocFiscaisCoringsControllerTest < ActionController::TestCase
  setup do
    @doc_fiscais_coring = doc_fiscais_corings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doc_fiscais_corings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doc_fiscais_coring" do
    assert_difference('DocFiscaisCoring.count') do
      post :create, doc_fiscais_coring: { arquivo: @doc_fiscais_coring.arquivo, interessado_id: @doc_fiscais_coring.interessado_id, nome: @doc_fiscais_coring.nome }
    end

    assert_redirected_to doc_fiscais_coring_path(assigns(:doc_fiscais_coring))
  end

  test "should show doc_fiscais_coring" do
    get :show, id: @doc_fiscais_coring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doc_fiscais_coring
    assert_response :success
  end

  test "should update doc_fiscais_coring" do
    patch :update, id: @doc_fiscais_coring, doc_fiscais_coring: { arquivo: @doc_fiscais_coring.arquivo, interessado_id: @doc_fiscais_coring.interessado_id, nome: @doc_fiscais_coring.nome }
    assert_redirected_to doc_fiscais_coring_path(assigns(:doc_fiscais_coring))
  end

  test "should destroy doc_fiscais_coring" do
    assert_difference('DocFiscaisCoring.count', -1) do
      delete :destroy, id: @doc_fiscais_coring
    end

    assert_redirected_to doc_fiscais_corings_path
  end
end
