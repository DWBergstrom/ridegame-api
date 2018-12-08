# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  # rides only allow index and show for security
  resources :rides, except: %i[new edit create update destroy]
  resources :finishes, except: %i[new edit]

  # example route
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
