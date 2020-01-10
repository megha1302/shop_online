class User < ApplicationRecord
    has_secure_password
    has_many :addresses
    validates :firstname, presence: true,uniqueness: { case_sensitive: false },length: { minimum: 3, maximum: 25 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105 },uniqueness: { case_sensitive: false },format: { with: VALID_EMAIL_REGEX }
end
