Rails.application.routes.draw do
  # mount_graphql_devise_for(User, at: '/graphql_auth')

  # mount_graphql_devise_for 'Admin', at: 'auth'
  # as :admin do
     if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
     end
  
  #   # Define routes for Admin within this block.
  post "/graphql", to: "graphql#execute"

  # end
  resources :comments

  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end

  
  # mount_graphql_devise_for 'User', at: '/graphql_auth'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
