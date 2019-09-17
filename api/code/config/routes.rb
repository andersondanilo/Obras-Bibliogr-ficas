Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'convert-to-author-name', to: 'name#convert_to_author_name'

  root 'home#index'
end
