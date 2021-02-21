Rails.application.routes.draw do
  root 'static_pages#top'
  resources :users
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :games
  resources :scores
  resources :pro_users, only: %i[new create destroy]
  resources :pro_teams, only: %i[new create destroy]
  resources :pro_tournaments, only: %i[new create destroy]
  resources :pro_games do
    resources :pro_scores, only: %i[new create destroy], shallow: true
  end

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :pro_users, only: [:index, :show]
    end
  end
end
