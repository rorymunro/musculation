Musculation::Application.routes.draw do
  
  

  resources :categories, :except => [:index, :show]
  resources :forums, :except => :index do
  resources :topics, :shallow => true, :except => :index do
  resources :posts, :shallow => true, :except => [:index, :show]
    end
    root :to => 'categories#index', :via => :get
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :backs, only: [:create, :destroy]
  resources :poitrines, only: [:create, :destroy]
  resources :shoulders, only: [:create, :destroy]
  resources :day1s, only: [:create, :destroy]
  resources :day2s, only: [:create, :destroy]
  resources :day3s, only: [:create, :destroy]
  resources :customs, only: [:create, :destroy]
  

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
  match '/custom_regime',   to: 'static_pages#custom_regime',   via: 'get'
  match '/custom_journal',   to: 'static_pages#custom_journal',   via: 'get'

  match '/exercices', to: 'exercices#index', via: 'get'
 
  match '/pectoraux', to: 'exercices#pectoraux', via: 'get'
  match '/pectoraux1', to: 'exercices#pectoraux1', via: 'get'
  match '/pectoraux2', to: 'exercices#pectoraux2', via: 'get'
  match '/pectoraux3', to: 'exercices#pectoraux3', via: 'get'
  match '/pectoraux4', to: 'exercices#pectoraux4', via: 'get'
  match '/pectoraux5', to: 'exercices#pectoraux5', via: 'get'
  match '/pectoraux6', to: 'exercices#pectoraux6', via: 'get'
  match '/pectoraux7', to: 'exercices#pectoraux7', via: 'get'
  match '/pectoraux8', to: 'exercices#pectoraux8', via: 'get'
  match '/pectoraux9', to: 'exercices#pectoraux9', via: 'get'
  match '/pectoraux10', to: 'exercices#pectoraux10', via: 'get'
  
  match '/bras', to: 'exercices#bras', via: 'get'
  match '/bras1', to: 'exercices#bras1', via: 'get'
  match '/bras2', to: 'exercices#bras2', via: 'get'
  match '/bras3', to: 'exercices#bras3', via: 'get'
  match '/bras4', to: 'exercices#bras4', via: 'get'
  match '/bras5', to: 'exercices#bras5', via: 'get'
  match '/bras6', to: 'exercices#bras6', via: 'get'
  match '/bras7', to: 'exercices#bras7', via: 'get'
  match '/bras8', to: 'exercices#bras8', via: 'get'
  match '/bras9', to: 'exercices#bras9', via: 'get'
  match '/bras10', to: 'exercices#bras10', via: 'get'
  match '/bras11', to: 'exercices#bras11', via: 'get'
  
  
  match '/epaules', to: 'exercices#epaules', via: 'get'
  match '/epaules1', to: 'exercices#epaules1', via: 'get'
  match '/epaules2', to: 'exercices#epaules2', via: 'get'
  match '/epaules3', to: 'exercices#epaules3', via: 'get'
  match '/epaules4', to: 'exercices#epaules4', via: 'get'
  match '/epaules5', to: 'exercices#epaules5', via: 'get'
  match '/epaules6', to: 'exercices#epaules6', via: 'get'
  match '/epaules7', to: 'exercices#epaules7', via: 'get'
  match '/epaules8', to: 'exercices#epaules8', via: 'get'
  match '/epaules9', to: 'exercices#epaules9', via: 'get'
  match '/epaules10', to: 'exercices#epaules10', via: 'get'
  match '/epaules11', to: 'exercices#epaules11', via: 'get'


  match '/dos1', to: 'exercices#dos', via: 'get'
  match '/dos2', to: 'exercices#dos1', via: 'get'
  match '/dos3', to: 'exercices#dos2', via: 'get'
  match '/dos4', to: 'exercices#dos3', via: 'get'
  match '/dos5', to: 'exercices#dos4', via: 'get'
  match '/dos6', to: 'exercices#dos5', via: 'get'
  match '/dos7', to: 'exercices#dos6', via: 'get'
  match '/dos8', to: 'exercices#dos7', via: 'get'
  match '/dos9', to: 'exercices#dos8', via: 'get'
  match '/dos10', to: 'exercices#dos9', via: 'get'
  match '/dos11', to: 'exercices#dos10', via: 'get'
 
  match '/jambes', to: 'exercices#jambes', via: 'get'
  match '/jambes1', to: 'exercices#jambes1', via: 'get'
  match '/jambes2', to: 'exercices#jambes2', via: 'get'
  match '/jambes3', to: 'exercices#jambes3', via: 'get'
  match '/jambes4', to: 'exercices#jambes4', via: 'get'
  match '/jambes5', to: 'exercices#jambes5', via: 'get'
  match '/jambes6', to: 'exercices#jambes6', via: 'get'
  match '/jambes7', to: 'exercices#jambes7', via: 'get'
  match '/jambes8', to: 'exercices#jambes8', via: 'get'
 
  match '/trapezes', to: 'exercices#trapezes', via: 'get'
  match '/trapezes1', to: 'exercices#trapezes1', via: 'get'
  match '/trapezes2', to: 'exercices#trapezes2', via: 'get'
  match '/trapezes3', to: 'exercices#trapezes3', via: 'get'

  match '/abdominaux', to: 'exercices#abdominaux', via: 'get'
  match '/abdominaux1', to: 'exercices#abdominaux1', via: 'get'
  match '/abdominaux2', to: 'exercices#abdominaux2', via: 'get'
  match '/abdominaux3', to: 'exercices#abdominaux3', via: 'get'
  match '/abdominaux4', to: 'exercices#abdominaux4', via: 'get'
  match '/abdominaux5', to: 'exercices#abdominaux5', via: 'get'
  match '/abdominaux6', to: 'exercices#abdominaux6', via: 'get'
  
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
