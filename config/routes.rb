Rails.application.routes.draw do

  get 'channels/index', to: 'channels#index'
  get 'channels/search', to: 'channels#search'
  # get 'channels/show', to: 'channels#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
