Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users, :only => [:show]
  
  get "posts/mypost" => "posts#mypost"

  root 'posts#index'
  resources :posts do
    resources :tags
  end

end
