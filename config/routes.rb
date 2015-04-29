Rails.application.routes.draw do
  resources :minijobs
  root 'minijobs#index'
	get 'tags/:tag', to: 'minijobs#index', as: :tag
end
