class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :for_comment, dependent: :destroy
  validates_presence_of :title, :content
end
