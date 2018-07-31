Rails.application.routes.draw do

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
end
