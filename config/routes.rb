Rails.application.routes.draw do
  #resources :registers
  resources :registers do
    get "delete"
  end

  root to: "registers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
