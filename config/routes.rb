Hackiton::Application.routes.draw do

  resources :small_groups

  root "pages#home"
  get "feed" => "pages#feed"
  get "throwdowns_rules" => "pages#throwdowns_rules"
  get "throwdowns_current" => "pages#throwdowns_current"
  get "spoonwars_rules" => "pages#spoonwars_rules"
  get "spoonwars_pledge_roster" => "pages#spoonwars_pledge_roster"
  get "spoonwars_report_kill" => "pages#spoonwars_report_kill"
  get "spoonwars_wrongful_death" => "pages#spoonwars_wrongful_death"
  get "spoonwars_matchups" => "pages#spoonwars_matchups"
  get "spoonwars_scores" => "pages#spoonwars_scores"
  get "photo_rules" => "pages#photo_rules"
  get "photo_current" => "pages#photo_current"
  get "photo_submit" => "pages#photo_submit"
  get "points" => "pages#points"
  get "contact" => "pages#contact"
  get "small_groups" => "pages#smallGroups"

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
