EmberAuthRailsDemo::Application.routes.draw do
  namespace :api do
    devise_for :users, only: []
    devise_scope :user do
      post   'sign_in'  => 'sessions#create'
      delete 'sign_out' => 'sessions#destroy'
    end
  end
end
