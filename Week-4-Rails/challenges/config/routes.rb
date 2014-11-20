Rails.application.routes.draw do

  resources :challenges

  get '/' => 'site#home'

end
