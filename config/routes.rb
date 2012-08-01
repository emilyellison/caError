CaError::Application.routes.draw do
  root to: 'errors#index'
  
  resources :errors
end
