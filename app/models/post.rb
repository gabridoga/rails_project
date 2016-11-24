class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :body, presence: true, length: { maximum: 840 }
  default_scope -> { order(created_at: :desc) }
  has_attached_file :atfile, :styles => { :medium => "469×314>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :atfile, :content_type => /\Aimage\/.*\Z/
end
