Rails.application.routes.draw do

  get 'users/downgrade'

  devise_for :users
  

  resources :wikis do
    resources :collaborators, only: [:create, :destroy]
  end

  resources :charges, only: [:new, :create]

  get 'welcome/index'

  get 'about' => 'welcome#about'

root to: 'welcome#index'

end
