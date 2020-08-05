Rails.application.routes.draw do
  get 'first_request', to: 'test#first_request'
  get 'second_request', to: 'second_test#second_request'
  # get 'second_request', to: 'test#second_request'

end
