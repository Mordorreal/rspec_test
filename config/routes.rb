Rails.application.routes.draw do

  root 'welcome#index'

  resources :request do
    resources :response
  end
end
