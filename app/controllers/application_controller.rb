class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
  include GraphqlDevise::Concerns::SetUserByToken
end
