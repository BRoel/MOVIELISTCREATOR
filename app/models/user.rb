class User < ApplicationRecord
    has_secure_password
    has_many :lists

    validates :username, :email, presence: true
    validates :username, :email, uniqueness: true  
end
