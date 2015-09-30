Rails.application.routes.draw do

  resources :women do
    collection do
      get :search
    end
  end

end
