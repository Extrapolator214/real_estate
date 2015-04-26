Rails.application.routes.draw do
  devise_for :users
  resources :ads

  get 'ads_by_city' => 'ads#ads_by_city', as: :ads_by_city
  get 'prices_by_city' => 'ads#prices_by_city', as: :prices_by_city
  get 'top_ten_agents' => 'ads#top_ten_agents', as: :top_ten_agents

  root 'ads#index'

  namespace :api do
    namespace :v1 do
      namespace :ads do
        get '/' => 'api_ads#search'
        get '/:id' => 'api_ads#show'
      end
    end
  end

end
