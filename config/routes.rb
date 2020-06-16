Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks 
  get 'work',to:'tasks#work'
  get 'hobby',to:'tasks#hobby'
  get 'other',to:'tasks#other'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
