Rails.application.routes.draw do

  root 'static_pages#index'
  scope :api do
    scope :v1 do
      resources :posts
      resources :comments, only: [:index]
    end
  end
end
