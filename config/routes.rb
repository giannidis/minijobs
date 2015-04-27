Rails.application.routes.draw do
  resources :minijobs
  root 'minijobs#index'

end
