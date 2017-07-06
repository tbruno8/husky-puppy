Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sanzijings#index'
  resources :sanzijings do
    collection do
      get 'search'
    end
  end
  resources :mathes
  resources :chinese_words
end
