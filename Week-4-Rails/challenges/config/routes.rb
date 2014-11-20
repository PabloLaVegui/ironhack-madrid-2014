Rails.application.routes.draw do

  resources :challenges

  get '/', to: 'site#home', as: "home"

end
