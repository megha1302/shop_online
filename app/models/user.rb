class User < ApplicationRecord
    attr_accessor :roles_attributes
    has_secure_password
    has_many :roles
    has_many :addresses
    accepts_nested_attributes_for :roles
end
