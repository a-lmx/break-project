Rails.application.routes.draw do
  root 'home#index'

  get '/:language', to: 'home#index'
end
