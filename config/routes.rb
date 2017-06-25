Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sanzijings#index'
  resource :sanzijings do
    collection do
      get 'search'
    end
  end
  resource :mathes do
    collection do
      get 'index'
    end
  end
  resource :chinese_words do
    collection do
      get 'index'
    end
  end
end
