# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131212173011) do

  create_table "aprov_estabs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo_doc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aprov_projs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo_doc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carteira_profs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cnhs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cofs", force: true do |t|
    t.integer  "interessado_id"
    t.date     "data_fim"
    t.boolean  "estatus"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comp_ends", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultors", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.date     "data_fim"
    t.boolean  "verificador"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordenadors", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.date     "data_fim"
    t.boolean  "verificador"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cpfs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cronogramas", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dados_bancos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doc_fiscais_corings", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "docs_pontos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos_estabs", force: true do |t|
    t.integer  "aprov_estab_id"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos_ins", force: true do |t|
    t.integer  "inauguracao_id"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos_projs", force: true do |t|
    t.integer  "aprov_proj_id"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inauguracaos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo_doc"
    t.date     "data_start"
    t.date     "data_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interessados", force: true do |t|
    t.string   "interessado_nome"
    t.string   "interessado_cpf"
    t.string   "interessado_rg"
    t.string   "interessado_data_nasc"
    t.string   "interessado_estado_civil"
    t.string   "interessado_regime_bens"
    t.string   "interessado_renda"
    t.string   "interessado_sera_admin"
    t.string   "interessado_dispon_integral"
    t.string   "interessado_quem_sera_admin"
    t.string   "interessado_resumo_prof"
    t.string   "interessado_manifesto_pos"
    t.string   "interessado_email"
    t.string   "interessado_banco"
    t.string   "interessado_agencia"
    t.string   "interessado_cc"
    t.string   "interessado_gerente"
    t.string   "interessado_fone_banco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "irpfs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "irpjs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lembretes", force: true do |t|
    t.integer  "interessado_id"
    t.string   "observacao"
    t.string   "nome"
    t.date     "data_max"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markets", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "observs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operadors", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.date     "data_fim"
    t.boolean  "verificador"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagto_taxas", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plan_resumos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planilhas", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pre_contratos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.date     "data_fim"
    t.boolean  "verificador"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proj_arquitetonicos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "redacaos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rgs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "serasas", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_carteira_profs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_cnhs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_comp_ends", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_cpfs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_dados_bancos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_doc_fiscais_corings", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_irpfs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_irpjs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_rgs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_serasas", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "socio_spcs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spcs", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "nome",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "val_pontos", force: true do |t|
    t.integer  "interessado_id"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
