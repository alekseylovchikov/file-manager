Rails.application.routes.draw do
  resources :docs
  
  authenticated :user do
    root 'docs#index', as: 'authenticated_root'
  end
  
  root 'welcome#index'
  
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
