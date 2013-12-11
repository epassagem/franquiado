require 'test_helper'

class AprovProjsControllerTest < ActionController::TestCase
  setup do
    @aprov_proj = aprov_projs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aprov_projs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aprov_proj" do
    assert_difference('AprovProj.count') do
      post :create, aprov_proj: { arquivo_doc: @aprov_proj.arquivo_doc, interessado_id: @aprov_proj.interessado_id }
    end

    assert_redirected_to aprov_proj_path(assigns(:aprov_proj))
  end

  test "should show aprov_proj" do
    get :show, id: @aprov_proj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aprov_proj
    assert_response :success
  end

  test "should update aprov_proj" do
    patch :update, id: @aprov_proj, aprov_proj: { arquivo_doc: @aprov_proj.arquivo_doc, interessado_id: @aprov_proj.interessado_id }
    assert_redirected_to aprov_proj_path(assigns(:aprov_proj))
  end

  test "should destroy aprov_proj" do
    assert_difference('AprovProj.count', -1) do
      delete :destroy, id: @aprov_proj
    end

    assert_redirected_to aprov_projs_path
  end
end
