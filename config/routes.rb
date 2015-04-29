Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :minijobs
  root 'minijobs#index'
	get 'tags/:tag', to: 'minijobs#index', as: :tag
end
