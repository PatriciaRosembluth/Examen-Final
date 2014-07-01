AkitaThermostat::Application.routes.draw do

  resources :issues

  resources :alarms

  resources :locations

  resources :history_thermostats

  resources :planners

  get '/thermostats/new' => 'thermostats#new', as: 'new_thermostat'

  get '/planners/new/:id' => 'planners#new', as: 'new'
  get '/planners/history/:id' => 'planners#history', as: 'planner_history'
  get '/thermostats/devise' => 'thermostats#devise', as: 'devise'
  
  get '/issues/resolution/:id' => 'issues#resolution'
  get '/issues/new/:id' => 'issues#new'
  get '/issues/history/:id' => 'issues#history'
  get '/issues/change_status/:id' => 'issues#change_status', :as => 'change_status_issue'
  get '/issues/open/:id' => 'issues#open', :as => 'open_issue'

  get '/history_thermostats/:id' => 'history_thermostats#index'

  get '/alarms/new/:id' => 'alarms#new'
  

  get 'users/change_role/:id' => 'users#change_role', :as => 'change_role_user'
  get 'users/change_enable/:id' => 'users#change_enable', :as => 'change_enable_user'
  get 'users/delete/:id' => 'users#destroy', :as => 'delete_user'
  
 
  get "registrations/edit"
  get "/error" => "static_pages#error"
resources :locations do
   get 'register', on: :collection
 end
  # get "thermostats/id" => "locations#register"
  devise_for :users
  resources :users
  resources :thermostats

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'
  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'



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
