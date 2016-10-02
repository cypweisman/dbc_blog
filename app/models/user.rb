class User < ActiveRecord::Base
  has_many :posts

  has_secure_password



  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user && user.password == password
      user
    else
      nil
    end
  end


end