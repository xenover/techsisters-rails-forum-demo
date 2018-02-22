class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true, length: { minimum: 5 }

  has_many :posts

  def authenticate(login_password)
    password == login_password
  end
end
