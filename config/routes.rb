Rails.application.routes.draw do

  root 'items#index'
  devise_for :users, skip: :all
  devise_scope :user do
    get 'login', to: 'users/sessions#new', as: :new_user_session
    post 'login', to: 'users/sessions#create'
    get 'signup', to: 'users/registrations#index', as: :index_user_registration
    get 'signup/registration', to: 'users/registrations#new', as: :new_user_registration
    post 'signup/registration', to: 'users/registrations#create'
    delete 'signup', to: 'users/sessions#destroy', as: :destroy_session
  end

  resources :registrations

  resources :users, only: [:index, :show, :update] do
    collection do
      get 'logout'
    end
  end

  resource :items do
    collection do
      get 'get_category_ms'
      get 'get_category_ss'
      get 'deal'
      get 'completion'
      # /profiles/get_cities
    end
  end

  resource :deals do
    get 'dealing'
    get 'completion'
  end

end
