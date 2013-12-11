require 'test_helper'

class FotosEstabsControllerTest < ActionController::TestCase
  setup do
    @fotos_estab = fotos_estabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotos_estabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotos_estab" do
    assert_difference('FotosEstab.count') do
      post :create, fotos_estab: { aprov_estab_id: @fotos_estab.aprov_estab_id, foto: @fotos_estab.foto }
    end

    assert_redirected_to fotos_estab_path(assigns(:fotos_estab))
  end

  test "should show fotos_estab" do
    get :show, id: @fotos_estab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotos_estab
    assert_response :success
  end

  test "should update fotos_estab" do
    patch :update, id: @fotos_estab, fotos_estab: { aprov_estab_id: @fotos_estab.aprov_estab_id, foto: @fotos_estab.foto }
    assert_redirected_to fotos_estab_path(assigns(:fotos_estab))
  end

  test "should destroy fotos_estab" do
    assert_difference('FotosEstab.count', -1) do
      delete :destroy, id: @fotos_estab
    end

    assert_redirected_to fotos_estabs_path
  end
end
