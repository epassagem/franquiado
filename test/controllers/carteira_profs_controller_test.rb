require 'test_helper'

class CarteiraProfsControllerTest < ActionController::TestCase
  setup do
    @carteira_prof = carteira_profs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carteira_profs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carteira_prof" do
    assert_difference('CarteiraProf.count') do
      post :create, carteira_prof: { arquivo: @carteira_prof.arquivo, interessado_id: @carteira_prof.interessado_id }
    end

    assert_redirected_to carteira_prof_path(assigns(:carteira_prof))
  end

  test "should show carteira_prof" do
    get :show, id: @carteira_prof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carteira_prof
    assert_response :success
  end

  test "should update carteira_prof" do
    patch :update, id: @carteira_prof, carteira_prof: { arquivo: @carteira_prof.arquivo, interessado_id: @carteira_prof.interessado_id }
    assert_redirected_to carteira_prof_path(assigns(:carteira_prof))
  end

  test "should destroy carteira_prof" do
    assert_difference('CarteiraProf.count', -1) do
      delete :destroy, id: @carteira_prof
    end

    assert_redirected_to carteira_profs_path
  end
end
