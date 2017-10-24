Rails.application.routes.draw do
  resources :messages
  get 'page/home'
  # root_to 'page#home'
  resources :employees, only: [:index, :show, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
