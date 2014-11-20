Rails.application.routes.draw do

  resources :challenges do
    resources :votes
  end

  get '/', to: 'site#home', as: "home"

end
