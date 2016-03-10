Rails.application.routes.draw do
  resources :users,
            :shows, only: :index
end
