class Post < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :user

  validates :title, presence: true

  def creator?(session)
    self.user.id == session
  end

end