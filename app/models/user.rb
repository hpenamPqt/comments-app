# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         #:confirmable # :trackable, :omniauthable
   include GraphqlDevise::Authenticatable
   include GraphqlDevise::Model
  
  #include GraphqlDevise::Concerns::Model
   # including after calling the `devise` method is important.
#    include GraphqlDevise::Authenticatable
#      def self.roles
#        { admin: :admin, user: :user }
#      end
# def fetch 
# end 
end
