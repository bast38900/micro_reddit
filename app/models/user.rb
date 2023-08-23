# User class with validations
class User < ApplicationRecord
    validations :email, presence: true, uniqueness: true, fomat: { with: URI::MailTo::EMAIL_REGEXP }
    validations :username, presence: true, uniqueness: true, length: { in 3..20 }
    validations :password, presence: true, length: { in 8..24 }
end