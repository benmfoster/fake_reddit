Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/posts" => "posts#index"
    post "/posts" => "posts#create"
    get "/posts/:id" => "posts#show"
    patch "/posts/:id" => "posts#update"
    delete "/posts/:id" => "posts#destroy"

    get "/comments" => "comments#index"
    post "/comments" => "comments#create"
    patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"

    post "/downvotes" => "downvotes#create"
    delete "/downvotes/:id" => "downvotes#destroy"

    post "/notifications" => "notifications#create"
    delete "/notifications/:id" => "notifications#destroy"

    get "/board_posts" => "board_posts#index"
    post "/board_posts" => "board_posts#create"
    patch "/board_posts/:id" => "board_posts#update"
    delete "/board_posts/:id" => "board_posts#destroy"

    
  end
  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] } 
end
