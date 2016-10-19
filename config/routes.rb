Rails.application.routes.draw do

  root "pictures#index"
  devise_for :users
  
  resources :pictures do
    collection do
      post :confirm
    end
  end
  
  #letter_opener_webのrouting設定
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
end