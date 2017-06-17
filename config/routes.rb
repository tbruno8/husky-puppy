Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sanzijings#index'
  resource :sanzijings
  resource :mathes do
    collection do
      get 'index'
    end
  end
end
