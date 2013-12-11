Franquia::Application.routes.draw do
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

  devise_for :users
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
  
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'interessados#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  
  

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
