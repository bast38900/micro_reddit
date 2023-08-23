# User class with validations
class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
    validates :password, presence: true, length: { in: 8..24 }
end