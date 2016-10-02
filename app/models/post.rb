class Post < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true

  def creator?(session)
    self.user.id == session
  end

end