Rails.application.routes.draw do
  resources :conversations, except: [:new, :edit]
  resources :messages, except: [:new, :edit]
  resources :events, except: [:new, :edit]
  resources :users, except: [:new, :edit]
  root 'events#index'

  get 'login' => 'sessions#login'
  post 'login' => 'sessions#login'

  get 'logout' => 'sessions#logout'

  get 'oauth' => 'sessions#oauth'
  post 'oauth' => 'sessions#oauth'

  get 'stashed' => 'events#stashed'

  get 'my_events' => 'events#my_events'

  post 'likes' => 'users#likes'

  get 'total_messages_not_viewed' => 'conversations#total_messages_not_viewed'

  get 'experienced' => 'events#experienced'
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
