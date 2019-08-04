Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get     'posts',          to: "post#index"

  get     'posts/new',      to: "post#new"

  get     'posts/:id/edit', to: "post#edit",    as: :edit_post

  get     'posts/:id',      to: "post#show",    as: :post

  patch   'posts/:id',      to: "post#update"

  delete  'posts/:id',      to: "post#delete",  as: :delete_post

  post    'posts',          to: "post#create"
end
