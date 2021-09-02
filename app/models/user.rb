class User < ApplicationRecord
    has_many :savedparks
    has_many :parks, through: :savedparks

    # uncomment once we have the user functionality set up
    # has_secure_password
    # validates :name, :email, :username, :password_digest, presence: true
    # validates :username, uniqueness: true
end
