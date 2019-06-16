Rails.application.routes.draw do
  root 'landing_page#index'
  devise_scope :user do
    get "/here" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

  devise_for :users

  resources :users do
    resources :landing_page
  end
end
