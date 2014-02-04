Musculation::Application.routes.draw do
  
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :backs, only: [:create, :destroy]
  resources :poitrines, only: [:create, :destroy]
  resources :shoulders, only: [:create, :destroy]
  resources :day1s, only: [:create, :destroy]
  resources :day2s, only: [:create, :destroy]
  resources :day3s, only: [:create, :destroy]

  root  'static_pages#home'
  match '/signup', to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/forum',    to: 'static_pages#forum',    via: 'get'
  match '/regime',   to: 'static_pages#regime',   via: 'get'
  match '/standard',   to: 'static_pages#standard',   via: 'get'
  match '/dos',   to: 'static_pages#dos',   via: 'get'
  match '/poitrin',   to: 'static_pages#poitrin',   via: 'get'
  match '/cuisses_epaules',   to: 'static_pages#cuisses_epaules',   via: 'get'
  match '/jour1',   to: 'static_pages#jour1',   via: 'get'
  match '/jour2',   to: 'static_pages#jour2',   via: 'get'
  match '/jour3',   to: 'static_pages#jour3',   via: 'get'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :producatalog#view'

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
  #   resources :products docts

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
