Rails.application.routes.draw do

  root 'continents#index'
  resources :continents, only: [:index, :show], shallow: true do
    resources :categories, except: [:index, :show], shallow: true do
      resources :subfolders, except: [:index, :show]
    end
  end
  resources :contact_forms, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
