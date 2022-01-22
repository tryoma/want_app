Rails.application.routes.draw do
  namespace :v1 do
    # resources :todos, only: [:index, :create, :destroy]
    resources :users, shallow: true do
      resources :wants
    end
    resources :wants, except: [:index, :create] do
      resources :dids, shallow: true
      resources :schedules, shallow: true
      resources :related_informations, shallow: true
    end
    resources :schedules, except: [:index, :create] do
      resources :todos, shallow: true
    end
  end
end
