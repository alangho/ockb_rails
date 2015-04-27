class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments

  default_scope -> { order(created_at: :desc) }

  validates :content, presence: true
  validates :title, presence: true, length: { maximum: 255 }

end