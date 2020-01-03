class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :for_comment, polymorphic: true
  has_many :comments, as: :for_comment
end
