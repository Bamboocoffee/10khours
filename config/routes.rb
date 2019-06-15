Rails.application.routes.draw do
  devise_for :users
  get 'corner/The'
  get 'corner/Corner'
  get 'login_page/login'
  root :to => 'login_page#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
