Rails.application.routes.draw do
  resources :users

  get '*path', :to => 'errors#show' , constraints: {status: /\d{3}/}


end
