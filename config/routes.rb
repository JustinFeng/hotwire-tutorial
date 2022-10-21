Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'pages#home'

  resources :quotes do
    resources :line_item_dates, except: %i[index show] do
      resources :line_items, except: [:index, :show]
    end
  end
end
