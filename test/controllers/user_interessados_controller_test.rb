require 'test_helper'

class UserInteressadosControllerTest < ActionController::TestCase
  setup do
    @user_interessado = user_interessados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_interessados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_interessado" do
    assert_difference('UserInteressado.count') do
      post :create, user_interessado: { user_email: @user_interessado.user_email, user_name: @user_interessado.user_name, user_password: @user_interessado.user_password }
    end

    assert_redirected_to user_interessado_path(assigns(:user_interessado))
  end

  test "should show user_interessado" do
    get :show, id: @user_interessado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_interessado
    assert_response :success
  end

  test "should update user_interessado" do
    patch :update, id: @user_interessado, user_interessado: { user_email: @user_interessado.user_email, user_name: @user_interessado.user_name, user_password: @user_interessado.user_password }
    assert_redirected_to user_interessado_path(assigns(:user_interessado))
  end

  test "should destroy user_interessado" do
    assert_difference('UserInteressado.count', -1) do
      delete :destroy, id: @user_interessado
    end

    assert_redirected_to user_interessados_path
  end
end
