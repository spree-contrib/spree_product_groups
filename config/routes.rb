Spree::Core::Engine.routes.draw do

  # Search routes
  get 's/*product_group_query', :to => 'products#index', :as => :simple_search
  get '/pg/:product_group_name', :to => 'products#index', :as => :pg_search
  get '/t/*id/s/*product_group_query', :to => 'taxons#show', :as => :taxons_search
  get 't/*id/pg/:product_group_name', :to => 'taxons#show', :as => :taxons_pg_search

  namespace :admin do
    resources :product_groups do
      resources :product_scopes
    end
  end

end
