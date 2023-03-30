=begin
  email: string
  password_digest: string

  password: string virtual
  password_confirmation: string virtual
=end

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: {with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/, message: "Must be a valid email!"}
end
