class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          #:confirmable, EMAIL DE CONFIRMACION 
          :omniauthable
  include DeviseTokenAuth::Concerns::User
end
