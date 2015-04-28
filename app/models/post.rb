class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments

  validates :content, presence: true, allow_blank: false
  validates :title, presence: true, length: { maximum: 255 }, allow_blank: false

  scope :recent, -> { order('created_at DESC') }
  scope :oldest, -> { order('created_at ASC') }

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("lower(title) like ?", "%#{query}%") 
  end

  def self.sort_by(sort_param)
    case sort_param
    when 'recent'
      recent
    when 'oldest'
      oldest
    else
      recent
    end
  end

end