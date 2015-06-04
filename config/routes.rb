Rails.application.routes.draw do
  # Routes for the Chef resource:
  # CREATE
  get "/chefs/new", :controller => "chefs", :action => "new"
  post "/create_chef", :controller => "chefs", :action => "create"

  # READ
  get "/chefs", :controller => "chefs", :action => "index"
  get "/chefs/:id", :controller => "chefs", :action => "show"

  # UPDATE
  get "/chefs/:id/edit", :controller => "chefs", :action => "edit"
  post "/update_chef/:id", :controller => "chefs", :action => "update"

  # DELETE
  get "/delete_chef/:id", :controller => "chefs", :action => "destroy"
  #------------------------------

  # Routes for the Protein resource:
  # CREATE
  get "/proteins/new", :controller => "proteins", :action => "new"
  post "/create_protein", :controller => "proteins", :action => "create"

  # READ
  get "/proteins", :controller => "proteins", :action => "index"
  get "/proteins/:id", :controller => "proteins", :action => "show"

  # UPDATE
  get "/proteins/:id/edit", :controller => "proteins", :action => "edit"
  post "/update_protein/:id", :controller => "proteins", :action => "update"

  # DELETE
  get "/delete_protein/:id", :controller => "proteins", :action => "destroy"
  #------------------------------

  # Routes for the Cuisine resource:
  # CREATE
  get "/cuisines/new", :controller => "cuisines", :action => "new"
  post "/create_cuisine", :controller => "cuisines", :action => "create"

  # READ
  get "/cuisines", :controller => "cuisines", :action => "index"
  get "/cuisines/:id", :controller => "cuisines", :action => "show"

  # UPDATE
  get "/cuisines/:id/edit", :controller => "cuisines", :action => "edit"
  post "/update_cuisine/:id", :controller => "cuisines", :action => "update"

  # DELETE
  get "/delete_cuisine/:id", :controller => "cuisines", :action => "destroy"
  #------------------------------

  # Routes for the Recipe resource:
  # CREATE
  get "/recipes/new", :controller => "recipes", :action => "new"
  post "/create_recipe", :controller => "recipes", :action => "create"

  # READ
  get "/recipes", :controller => "recipes", :action => "index"
  get "/recipes/:id", :controller => "recipes", :action => "show"

  # UPDATE
  get "/recipes/:id/edit", :controller => "recipes", :action => "edit"
  post "/update_recipe/:id", :controller => "recipes", :action => "update"

  # DELETE
  get "/delete_recipe/:id", :controller => "recipes", :action => "destroy"
  #------------------------------

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'recipes#index'
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
