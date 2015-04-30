Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :minijobs
  root 'minijobs#index'
	get 'tags/:tag', to: 'minijobs#index', as: :tag

	match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
	match 'auth/failure', to: redirect('/'), via: [:get, :post]
	match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
