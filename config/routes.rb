Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :comments

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  # mount_graphql_devise_for 'User', at: '/graphql_auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
