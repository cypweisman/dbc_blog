class User < ActiveRecord::Base
  has_many :posts

  validates :email, :presence => true

  has_secure_password



end