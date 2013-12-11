require 'test_helper'

class FotosProjsControllerTest < ActionController::TestCase
  setup do
    @fotos_proj = fotos_projs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotos_projs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotos_proj" do
    assert_difference('FotosProj.count') do
      post :create, fotos_proj: { aprov_proj_id: @fotos_proj.aprov_proj_id, foto: @fotos_proj.foto }
    end

    assert_redirected_to fotos_proj_path(assigns(:fotos_proj))
  end

  test "should show fotos_proj" do
    get :show, id: @fotos_proj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotos_proj
    assert_response :success
  end

  test "should update fotos_proj" do
    patch :update, id: @fotos_proj, fotos_proj: { aprov_proj_id: @fotos_proj.aprov_proj_id, foto: @fotos_proj.foto }
    assert_redirected_to fotos_proj_path(assigns(:fotos_proj))
  end

  test "should destroy fotos_proj" do
    assert_difference('FotosProj.count', -1) do
      delete :destroy, id: @fotos_proj
    end

    assert_redirected_to fotos_projs_path
  end
end
