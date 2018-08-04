Rails.application.routes.draw do

  get 'powers/index'
  get 'dragons/index'
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions',
  }

  devise_scope :user do
    # deviseでカスタムURLを使用する
    root to: 'users/registrations#new'
  end

  resources :diaries
  get '/likes_ranking', to: 'diaries#likes_ranking'
  get '/power_ranking', to: 'diaries#power_ranking'
  resources :likes, only: [:create, :destroy]
end
