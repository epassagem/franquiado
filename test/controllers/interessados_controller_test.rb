require 'test_helper'

class InteressadosControllerTest < ActionController::TestCase
  setup do
    @interessado = interessados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interessados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interessado" do
    assert_difference('Interessado.count') do
      post :create, interessado: { interessado_agencia: @interessado.interessado_agencia, interessado_banco: @interessado.interessado_banco, interessado_cc: @interessado.interessado_cc, interessado_cpf: @interessado.interessado_cpf, interessado_data_nasc: @interessado.interessado_data_nasc, interessado_dispon_integral: @interessado.interessado_dispon_integral, interessado_email: @interessado.interessado_email, interessado_estado_civil: @interessado.interessado_estado_civil, interessado_fone_banco: @interessado.interessado_fone_banco, interessado_gerente: @interessado.interessado_gerente, interessado_manifesto_pos: @interessado.interessado_manifesto_pos, interessado_nome: @interessado.interessado_nome, interessado_quem_sera_admin: @interessado.interessado_quem_sera_admin, interessado_regime_bens: @interessado.interessado_regime_bens, interessado_renda: @interessado.interessado_renda, interessado_resumo_prof: @interessado.interessado_resumo_prof, interessado_rg: @interessado.interessado_rg, interessado_sera_admin: @interessado.interessado_sera_admin }
    end

    assert_redirected_to interessado_path(assigns(:interessado))
  end

  test "should show interessado" do
    get :show, id: @interessado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interessado
    assert_response :success
  end

  test "should update interessado" do
    patch :update, id: @interessado, interessado: { interessado_agencia: @interessado.interessado_agencia, interessado_banco: @interessado.interessado_banco, interessado_cc: @interessado.interessado_cc, interessado_cpf: @interessado.interessado_cpf, interessado_data_nasc: @interessado.interessado_data_nasc, interessado_dispon_integral: @interessado.interessado_dispon_integral, interessado_email: @interessado.interessado_email, interessado_estado_civil: @interessado.interessado_estado_civil, interessado_fone_banco: @interessado.interessado_fone_banco, interessado_gerente: @interessado.interessado_gerente, interessado_manifesto_pos: @interessado.interessado_manifesto_pos, interessado_nome: @interessado.interessado_nome, interessado_quem_sera_admin: @interessado.interessado_quem_sera_admin, interessado_regime_bens: @interessado.interessado_regime_bens, interessado_renda: @interessado.interessado_renda, interessado_resumo_prof: @interessado.interessado_resumo_prof, interessado_rg: @interessado.interessado_rg, interessado_sera_admin: @interessado.interessado_sera_admin }
    assert_redirected_to interessado_path(assigns(:interessado))
  end

  test "should destroy interessado" do
    assert_difference('Interessado.count', -1) do
      delete :destroy, id: @interessado
    end

    assert_redirected_to interessados_path
  end
end
