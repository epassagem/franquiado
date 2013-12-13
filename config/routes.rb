Franquia::Application.routes.draw do
  
  
  resources :user_interessados

  devise_for :users

  
  resources :fotos_ins

  resources :inauguracaos

  resources :markets

  resources :contratos

  resources :professors

  resources :coordenadors

  resources :consultors

  resources :fotos_estabs

  resources :aprov_estabs

  resources :fotos_projs

  resources :aprov_projs

  resources :docs_pontos

  resources :val_pontos

  resources :operadors

  resources :pre_contratos

  resources :pagto_taxas

  resources :cofs

  resources :planilhas

  resources :interessados


  resources :cronogramas

  resources :proj_arquitetonicos

  resources :plan_resumos

  resources :redacaos

  resources :lembretes

  resources :observs

  resources :socio_doc_fiscais_corings

  resources :doc_fiscais_corings

  resources :socio_serasas

  resources :socio_spcs

  resources :socio_dados_bancos

  resources :socio_comp_ends

  resources :socio_irpjs

  resources :socio_irpfs

  resources :socio_carteira_profs

  resources :socio_cpfs

  resources :socio_rgs

  resources :socio_cnhs

  resources :serasas

  resources :spcs

  resources :dados_bancos

  resources :comp_ends

  resources :irpjs

  resources :irpfs

  resources :carteira_profs

  resources :cpfs

  resources :rgs

  resources :cnhs
  
  resources :interessados
  
  resources :carts
  
  

   root 'interessados#index'


end
