class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  validates :content, presence: true
  
   # post を user が「いいね！」しているときは「true」，「いいね」していないときは「false」
  def liked_by?(user)
    likes.find_by(user_id: user.id).present?
  end
end
