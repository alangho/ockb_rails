class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :content, presence: true, allow_blank: false

  end