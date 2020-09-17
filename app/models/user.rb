class User < ActiveRecord::Base
    has_secure_password
    has_many :programs
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :name, length: { minimum: 2 }
    validates :password, length: { in: 4..20 }
end