Qstate::Application.routes.draw do
  resources :contacts

  resources :proposals

  resources :registrations

  resources :sessions, only: [:new, :create, :destroy]


  resources :users
  #get "static_pages/home"
  #get "static_pages/contact"
  #get "static_pages/faq"
  #get "static_pages/schedule"
  #get "static_pages/proposal"
  #get "static_pages/registration"

  #match '/download', to: 'static_pages#download', via: 'get'
  get "static_pages/download"

  # proposal path
  match '/submit/proposal', to: 'proposals#new', via: 'get'
  match '/submit/registration', to: 'registrations#new', via: 'get'
  match '/contact_us', to: 'contacts#new', via: 'get'

  # User Model
  #match '/signup', to: 'users#new', via: 'get'

  # Sessions
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  # Static Pages
  match '/faq', to: 'static_pages#faq', via: 'get'
  match '/schedule', to: 'static_pages#schedule', via: 'get'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'static_pages#home'

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

  # Redirect invalid route requests
  get '*path' => redirect('/')

end
