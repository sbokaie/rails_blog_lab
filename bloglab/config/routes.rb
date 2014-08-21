Rails.application.routes.draw do
  root "blogs#index"
  get "/blogs", to: "blogs#index"
  get "/blogs/new", to: "blogs#new"
  get "blogs/show", to: "blogs#show"
  post "/blogs", to: "blogs#create"
end

