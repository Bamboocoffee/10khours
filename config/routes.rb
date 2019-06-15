Rails.application.routes.draw do
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users
  get 'corner/The'
  get 'corner/Corner'
  get 'login_page/login'
  root :to => '/users/sign_up'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
