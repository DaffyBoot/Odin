class User < ApplicationRecord
  has_secure_password


  validates :username, presence: true, uniqueness: true

  validates :email, format:{ with: /\S+@\S+/ }, uniqueness: { case_sensitive: false }
end
