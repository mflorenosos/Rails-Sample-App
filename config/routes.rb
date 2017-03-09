Rails.application.routes.draw do
  get 'about-this-app', to: 'static_pages#about'

  namespace :about, path: 'about-this-app' do
    get 'greetings', to: 'greetings#index', as: 'greetings'
    get 'greetings/:greet_me', to: 'greetings#greet_me', as: 'greet_me'
  end

  namespace :admin do
    resources :contacts
  end

  root 'static_pages#home'
end
