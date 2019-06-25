Rails.application.routes.draw do
  root 'landing_page#index'
  devise_scope :user do
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
    get "/sign_in" => "devise/sessions#new", as: "new_user_sessions" # custom path to sign_up/registration
    get "/dashboard" => "dashboard#mydash", as: "user_dashboard"
    get "/setup" => "from_scratch_controller#setup", as: "setup_option"

  end

  devise_for :users, controllers: { registrations: "registrations" }

  resources :users do
    resources :landing_page
  end
end
