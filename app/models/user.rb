class User < ActiveRecord::Base
  has_many :blogs

  has_secure_password


end