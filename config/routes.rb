Rails.application.routes.draw do
  resources :homes
  resources :items

devise_for :users, :controllers => {

  :omniauth_callbacks => 'users/omniauth_callbacks',
  :sessions => 'users/sessions',
  :registrations => 'users/registrations'
}
  resources :users
  root 'homes#index'

  resources :users do
    member do
      put 'follow'    => 'users#follow'
      put 'unfollow'    => 'users#unfollow'
    end
  end


  resources :homes do
    member do
      put 'poll_first'    => 'abouts#poll_first', as: 'poll_first'
      put 'poll_second'    => 'abouts#poll_second', as: 'poll_second'
      put 'poll_third'    => 'abouts#poll_third', as: 'poll_third'
      put 'poll_four'    => 'abouts#poll_four', as: 'poll_four'

    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
