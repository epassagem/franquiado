require 'test_helper'

class ObservsControllerTest < ActionController::TestCase
  setup do
    @observ = observs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:observs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create observ" do
    assert_difference('Observ.count') do
      post :create, observ: { interessado_id: @observ.interessado_id, observacao: @observ.observacao }
    end

    assert_redirected_to observ_path(assigns(:observ))
  end

  test "should show observ" do
    get :show, id: @observ
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @observ
    assert_response :success
  end

  test "should update observ" do
    patch :update, id: @observ, observ: { interessado_id: @observ.interessado_id, observacao: @observ.observacao }
    assert_redirected_to observ_path(assigns(:observ))
  end

  test "should destroy observ" do
    assert_difference('Observ.count', -1) do
      delete :destroy, id: @observ
    end

    assert_redirected_to observs_path
  end
end
