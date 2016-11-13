Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "pictures#index"
  
  resources :pictures do
    collection do
      post :confirm
    end
  end
  
#  devise_for :users, controllers: {
#    omniauth_callbacks: "users/omniauth_callbacks"
#  }
  
  #letter_opener_webのrouting設定
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
}
  
  
end