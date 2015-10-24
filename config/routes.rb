# == Route Map
#
#               Prefix Verb URI Pattern                                  Controller#Action
#    static_pages_home GET  /static_pages/home(.:format)                 static_pages#home
#   static_pages_about GET  /static_pages/about(.:format)                static_pages#about
# static_pages_contact GET  /static_pages/contact(.:format)              static_pages#contact
#      section_costume GET  /sections/:section_id/costumes/:id(.:format) costumes#show
#             sections GET  /sections(.:format)                          sections#index
#              section GET  /sections/:id(.:format)                      sections#show
#           refile_app      /attachments                                 #<Refile::App app_file="/home/jarrod/.rvm/gems/ruby-2.2.1/gems/refile-0.6.1/lib/refile/app.rb">
#

Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :sections, only: [:index, :show] do
    resources :costumes, only: [:show]
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
