Rails.application.routes.draw do
  resources :players, except: [:show] do 
    get 'matches/:faction', to: 'matches#index'
    resources :matches 
    end
end
