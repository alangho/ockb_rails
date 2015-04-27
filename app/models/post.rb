class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :category
  has_many :comments

  default_scope -> { order(created_at: :desc) }

  validates :content, presence: true, allow_blank: false
  validates :title, presence: true, length: { maximum: 255 }, allow_blank: false

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 
  end

end