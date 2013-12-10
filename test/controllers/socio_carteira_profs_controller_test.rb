require 'test_helper'

class SocioCarteiraProfsControllerTest < ActionController::TestCase
  setup do
    @socio_carteira_prof = socio_carteira_profs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socio_carteira_profs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create socio_carteira_prof" do
    assert_difference('SocioCarteiraProf.count') do
      post :create, socio_carteira_prof: { arquivo: @socio_carteira_prof.arquivo, interessado_id: @socio_carteira_prof.interessado_id }
    end

    assert_redirected_to socio_carteira_prof_path(assigns(:socio_carteira_prof))
  end

  test "should show socio_carteira_prof" do
    get :show, id: @socio_carteira_prof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @socio_carteira_prof
    assert_response :success
  end

  test "should update socio_carteira_prof" do
    patch :update, id: @socio_carteira_prof, socio_carteira_prof: { arquivo: @socio_carteira_prof.arquivo, interessado_id: @socio_carteira_prof.interessado_id }
    assert_redirected_to socio_carteira_prof_path(assigns(:socio_carteira_prof))
  end

  test "should destroy socio_carteira_prof" do
    assert_difference('SocioCarteiraProf.count', -1) do
      delete :destroy, id: @socio_carteira_prof
    end

    assert_redirected_to socio_carteira_profs_path
  end
end
