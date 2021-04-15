Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lesson_plans, only: [:index, :show, :create, :new, :edit, :update] do
    resources :lesson_positions, only: [:create, :destroy, :new]
  end
  resources :yoga_positions, only: [:index, :show, :create, :new, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
