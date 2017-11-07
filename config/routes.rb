Rails.application.routes.draw do

    root to: 'welcome#index'

    resources :countries, only: [:index, :show]
    resources :favorites, only: [:index, :create]


    delete "/logout", to: 'sessions#destroy'

    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'


end
