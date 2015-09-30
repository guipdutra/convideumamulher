Rails.application.routes.draw do

  root :to => 'static_pages#home'
  get '/help' => 'static_pages#help'

  resources :women do
    collection do
      get :search
    end
  end

end
