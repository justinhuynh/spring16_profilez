class User < ActiveRecord::Base
  has_secure_password

  has_many :profiles
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :username, presence: true
end
