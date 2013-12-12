require 'test_helper'

class FotosInsControllerTest < ActionController::TestCase
  setup do
    @fotos_in = fotos_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotos_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotos_in" do
    assert_difference('FotosIn.count') do
      post :create, fotos_in: { foto: @fotos_in.foto, inauguracao_id: @fotos_in.inauguracao_id }
    end

    assert_redirected_to fotos_in_path(assigns(:fotos_in))
  end

  test "should show fotos_in" do
    get :show, id: @fotos_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotos_in
    assert_response :success
  end

  test "should update fotos_in" do
    patch :update, id: @fotos_in, fotos_in: { foto: @fotos_in.foto, inauguracao_id: @fotos_in.inauguracao_id }
    assert_redirected_to fotos_in_path(assigns(:fotos_in))
  end

  test "should destroy fotos_in" do
    assert_difference('FotosIn.count', -1) do
      delete :destroy, id: @fotos_in
    end

    assert_redirected_to fotos_ins_path
  end
end
