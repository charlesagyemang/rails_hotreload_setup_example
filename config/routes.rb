Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts',     to: "post#index"
  get 'posts/new', to: "post#new"
end
