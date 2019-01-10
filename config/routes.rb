Rails.application.routes.draw do

  get 'channels/index', to: 'channels#index'
  get 'channels/show', to: 'channels#show'
  post 'channels/creat', to: 'channels#creat'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
