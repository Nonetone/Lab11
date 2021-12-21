Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'happy/input'
  get 'happy/view'
  root 'happy#input'
  get 'happy/return_data_base' 
end
